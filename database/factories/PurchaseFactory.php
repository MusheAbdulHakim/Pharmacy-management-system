<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Purchase;
use App\Models\Supplier;
use Illuminate\Database\Eloquent\Factories\Factory;

class PurchaseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Purchase::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product' => $this->faker->word(),
            'category_id' => Category::factory(),
            'supplier_id' => Supplier::factory(),
            'cost_price' => 10,
            'quantity' => random_int(10,200),
            'expiry_date' => $this->faker->date(),
            'image' => null,
        ];
    }
}
