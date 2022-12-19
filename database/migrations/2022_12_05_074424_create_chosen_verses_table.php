<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Query\Expression;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Poet;
use App\Models\Poem;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chosen_verses', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Poet::class);
            $table->foreignIdFor(Poem::class);
            $table->set('tags', ['الفخر', 'الشجاعة', 'الغزل', 'الرثاء', 'المعلقات', 'الهجاء', 'المدح', 'الحكمة', 'الحزن']);
            $table->json('verse')->default(new Expression('(JSON_ARRAY())'));
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
        Schema::dropIfExists('chosen_verses');
    }
};
