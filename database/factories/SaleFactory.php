<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;

class SaleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => Product::factory(),
            'quantity' => random_int(10,200),
            'total_price' => random_int(10,300)
        ];
    }
}
