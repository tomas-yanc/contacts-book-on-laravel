<?php

namespace Database\Factories;

use App\Models\Phonebook;
use Illuminate\Database\Eloquent\Factories\Factory;

class PhonebookFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Phonebook::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->name(),
            'email'=>$this->faker->email,
            'phone'=>$this->faker->e164PhoneNumber,
            'created_at'=>$this->faker->dateTime,
            'updated_at'=>$this->faker->dateTime,
        ];
    }
}
