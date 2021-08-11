<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Packages extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Packages', function (Blueprint $table) {
            $table->id();
            $table->string('package_name')->nullable($value = false)->charset('utf8');
            $table->float('price', 4, 2);
            $table->string('lifetime')->comment('montly/annual');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Packages');
    }
}
