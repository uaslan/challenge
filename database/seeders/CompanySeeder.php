<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Companies;
use Illuminate\Support\Str;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 10; $i++) {
            $faker = Faker::create();
            $company = new Companies();
            $company->site_url = $faker->domainName;
            $company->name = $faker->firstName;
            $company->lastname = $faker->lastName;
            $company->company_name = $faker->company;
            $company->email = $faker->safeEmail;
            $company->password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi';
            $company->company_token = Str::random(50);
            $company->save();
        }
    }
}
