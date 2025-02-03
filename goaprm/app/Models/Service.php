<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    protected $fillable =[
        'caption', 'imagefile','details'
       ];
       
       public function images(){
          return $this->hasMany('App\Models\Serviceimage','service_id');
       }
}
