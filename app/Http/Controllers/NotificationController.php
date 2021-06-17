<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    public function markAsRead(){
        auth()->user()->unreadNotifications->markAsRead();
        $notification = array(
            'message'=>"Notifications marked as read",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }

    public function read(){
        auth()->user()->unreadNotifications->markAsRead();
        $notification = array(
            'message'=>"Notification marked as read",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        auth()->user()->notifications()->delete();
        $notification = array(
            'message'=>"Notification has been deleted",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }
}
