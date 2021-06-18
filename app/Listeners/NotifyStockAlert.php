<?php

namespace App\Listeners;

use App\Events\PurchaseOutStock;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

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
        //
    }
}
