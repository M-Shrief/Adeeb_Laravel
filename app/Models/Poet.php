<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Poet extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'time_period', 'bio'
    ];

    public function poems()
    {
        return $this->hasMany(Poem::class);
    }

    public function chosenVerses()
    {
        return $this->hasMany(ChosenVerses::class);
    }

    public function proses()
    {
        return $this->hasMany(Prose::class);
    }
}
