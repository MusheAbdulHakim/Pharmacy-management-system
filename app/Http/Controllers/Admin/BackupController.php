<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Log;
use Artisan;
use Storage;
use Response;
use Exception;
use League\Flysystem\Adapter\Local;

class BackupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'backups';
        if (!count(config('backup.backup.destination.disks'))) {
            dd(trans('backup.no_disks_configured'));
        }
        $this->data['backups'] = [];
        foreach (config('backup.backup.destination.disks') as $disk_name) {
            $disk = Storage::disk($disk_name);
            $adapter = $disk->getDriver()->getAdapter();
            $files = $disk->allFiles();

            // make an array of backup files, with their filesize and creation date
            foreach ($files as $k => $f) {
                // only take the zip files into account
                if (substr($f, -4) == '.zip' && $disk->exists($f)) {
                    $this->data['backups'][] = [
                        'file_path'     => $f,
                        'file_name'     => str_replace('backups/', '', $f),
                        'file_size'     => $disk->size($f),
                        'last_modified' => $disk->lastModified($f),
                        'disk'          => $disk_name,
                        'download'      => ($adapter instanceof Local) ? true : false,
                    ];
                }
            }
        }
        return view('admin.backup',$this->data,compact(
            'title',
        ));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $notification = 'backup created successfully';
        try {
            ini_set('max_execution_time', 600);

            Log::info('Backpack\BackupManager -- Called backup:run from admin interface');

            Artisan::call('backup:run');

            $output = Artisan::output();
            if (strpos($output, 'Backup failed because')) {
                preg_match('/Backup failed because(.*?)$/ms', $output, $match);
                $notification = notify('backup process failed because ');
                $notification .= isset($match[1]) ? $match[1] : '';
                Log::error($notification.PHP_EOL.$output);
            } else {
                Log::info("BackupManager -- backup process has started");
            }
        } catch (Exception $e) {
            Log::error($e);

            return Response::make($e->getMessage(), 500);
        }

        return back()->with($notification);
    }

    
    

    /**
     * Downloads a backup zip file.
     */
    public function download()
    {
        $disk = Storage::disk(Request::input('disk'));
        $file_name = Request::input('file_name');
        $adapter = $disk->getDriver()->getAdapter();

        if ($adapter instanceof Local) {
            $storage_path = $disk->getDriver()->getAdapter()->getPathPrefix();

            if ($disk->exists($file_name)) {
                return response()->download($storage_path.$file_name);
            } else {
                abort(404, trans('backup.backup_doesnt_exist'));
            }
        } else {
            abort(404, trans('backup.only_local_downloads_supported'));
        }
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  file $file_name
     * @return \Illuminate\Http\Response
     */
    public function destroy($file_name)
    {
        $disk = Storage::disk(Request::input('disk'));

        if ($disk->exists($file_name)) {
            $disk->delete($file_name);
            $notification = notify('backup created successfully');
            return back()->with($notification);
        } else {
            abort(404, trans('backup.backup_doesnt_exist'));
        }
    }
}
