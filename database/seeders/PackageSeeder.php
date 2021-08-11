<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Packages;

class PackageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $packname = ['Bronze', 'Silver', 'Gold', 'Diamond'];
        $lifetime = ['Monthly', 'Annual'];
        for ($i = 0; $i < 4; $i++) {
            for ($j = 0; $j < 2; $j++) {
                $faker = Faker::create();
                $package = new Packages();
                $package->package_name = $packname[$i];
                $package->price = $faker->randomFloat(2, 100, 1000);
                $package->lifetime = $lifetime[$j];
                $package->save();
            }
        }
    }
}
