<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sponsor extends Model
{
    use HasFactory;
    protected $fillable =[
        'event_id','name','s_type','email','phone'
    ];
    public function event(){
        return $this->belongsTo('App\Models\Event');
      }
}
