<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Poet;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proses', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Poet::class);
            $table->set('tags', ['الفخر', 'الشجاعة', 'الغزل', 'الرثاء', 'المعلقات', 'الهجاء', 'المدح', 'الحكمة', 'الحزن']);
            $table->string('qoute');
            $table->boolean('reviewed');
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
        Schema::dropIfExists('proses');
    }
};
