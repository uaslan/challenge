<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company_packages extends Model
{
    use HasFactory;

    function getPackage()
    {
        return $this->hasOne(Packages::class, 'id', 'package_id')->first();
    }
}
