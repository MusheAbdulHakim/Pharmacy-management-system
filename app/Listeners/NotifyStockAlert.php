<?php

namespace App\Listeners;

use App\Models\User;
use App\Events\PurchaseOutStock;
use App\Notifications\StockAlertNotification;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class NotifyStockAlert
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(PurchaseOutStock $event)
    {
        $users = User::get();
        foreach($users as $user){
            $user->notify(new StockAlertNotification($event->data));
        }
    }
}
