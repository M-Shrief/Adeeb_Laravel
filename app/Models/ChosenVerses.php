<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChosenVerses extends Model
{
    use HasFactory;

    public function poet()
    {
        return $this->belongsTo(Poet::class);
    }
    public function poem()
    {
        return $this->belongsTo(Poem::class);
    }
    protected $casts = [
        'verse' => 'array',
    ];
}
