<?php

namespace App\Listeners;

use App\Events\PurchaseOutStock;
use App\Notifications\StockAlert;
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
     * @param  PurchaseOutStock  $event
     * @return void
     */
    public function handle(PurchaseOutStock $event)
    {
        auth()->user()->notify(new StockAlert($event->data));
    }
}
