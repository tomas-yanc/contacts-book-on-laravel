<?php

namespace Database\Seeders;

use App\Models\Phonebook;
use Illuminate\Database\Seeder;

class PhonebookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Phonebook::factory()->count(50)->create();
    }
}
