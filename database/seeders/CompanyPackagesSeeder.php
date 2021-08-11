<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Companies;
use App\Models\Packages;
use App\Models\Company_packages;

class CompanyPackagesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $companies = Companies::all();
        foreach ($companies as $company) {
            $faker = Faker::create();
            $start = $faker->dateTimeBetween('-30 days', '+0 days');
            $end = $faker->dateTimeBetween($start->format('Y-m-d'), '+60 days');

            $companyPack = new Company_packages();
            $packages = Packages::inRandomOrder()->first();
            $companyPack->company_id = $company->id;
            $companyPack->package_id = $packages->id;
            $companyPack->start_date = $start->format('Y-m-d');
            $companyPack->end_date = $end->format('Y-m-d');

            $companyPack->save();
        }
    }
}
