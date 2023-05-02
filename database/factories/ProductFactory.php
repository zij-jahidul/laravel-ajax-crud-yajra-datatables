<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        // Generate a fake image URL
        $imageUrl = $this->faker->imageUrl($width = 640, $height = 480, 'cats');

        return [
            'name' => $this->faker->name,
            'detail' => $this->faker->text,
            'photo' => $imageUrl,
        ];
    }
}
