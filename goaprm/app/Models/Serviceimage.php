<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Serviceimage extends Model
{
    use HasFactory;
    protected $fillable = [
        'service_id','images'
    ];
    
    public function service(){
        return $this->belongsTo('App\Models\Service');
    }
}
