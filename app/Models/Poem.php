<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Poem extends Model
{
    use HasFactory;

    public function poet()
    {
        return $this->belongsTo(Poet::class);
    }

    protected $casts = [
        'verses' => 'array'
    ];
}
