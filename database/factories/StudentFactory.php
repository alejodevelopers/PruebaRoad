<?php

namespace Database\Factories;

use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Factories\Factory;


class StudentFactory extends Factory
{

    public function definition()
    {
        $notes = [0, 1, 2, 3, 4, 5];

        $ages = [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];


        return [
            'name' => $this->faker->name(),
            'age' => $this->faker->randomElement($ages),
            'description' => $this->faker->text(),
            'identification' => $this->faker->numberBetween(),
            'note' => $this->faker->randomElement($notes),
            'photo' =>  $this->faker->image(storage_path('app\public\profile_photo'), 400, 300, 'animals', false)
        ];
    }
}
