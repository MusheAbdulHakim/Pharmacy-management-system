<?php

namespace App\Notifications;

use App\Models\Purchase;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\BroadcastMessage;

class StockAlert extends Notification
{
    use Queueable;

    public $product;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(Purchase $product)
    {
        $this->product = $product;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail','database','broadcast'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $url = url(route('edit-purchase',$this->product->id));
        return (new MailMessage)
                    ->greeting('Hello!')
                    ->line('The Product below is running out of stock.')
                    ->line("Product's name is ".$this->product->name ."is only ".$this->product->quantity."left in quantity")
                    ->line("Please update the product's quantity or make a new purchase.")
                    ->action('View Product', $url)
                    ->line('Thank you!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            'product_name'=>$this->product->name,
            'quantity'=>$this->product->quantity,
            'image'=>$this->product->image,
        ];
    }


    /**
     * Get the broadcastable representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return BroadcastMessage
     */
    public function toBroadcast($notifiable)
    {
        return new BroadcastMessage([
            'product_name'=>$this->product->name,
            'quantity'=>$this->product->quantity,
        ]);
    }
}
