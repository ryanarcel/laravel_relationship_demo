<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $fillable = ["firstname", "family_id"];

    public function family(){
        return $this->belongsTo(Family::class);
    }

}
