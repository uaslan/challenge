<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Companies extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Companies', function (Blueprint $table) {
            $table->id();
            $table->string('site_url')->unique()->nullable($value = false)->charset('utf8');;
            $table->string('name',100)->nullable($value = false)->charset('utf8');
            $table->string('lastname',100)->nullable($value = false)->charset('utf8');
            $table->string('company_name')->nullable($value = false)->charset('utf8');
            $table->string('email')->nullable($value = false)->charset('utf8');
            $table->string('password')->nullable($value = false)->charset('utf8');
            $table->string('company_token',50)->nullable($value = false)->charset('utf8');
            $table->timestamps();

            $table->index('email');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Companies');
    }
}
