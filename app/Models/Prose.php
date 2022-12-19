<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prose extends Model
{
    use HasFactory;

    protected $fillable = [
        'tags', 'qoute'
    ];

    public function poet()
    {
        return $this->belongsTo(Poet::class);
    }
}
