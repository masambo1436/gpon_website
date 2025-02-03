<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
    protected $fillable =[
        'event_id','name','phone','email'
      ];
  
    public function event(){
      return $this->belongsTo('App\Models\Event');
    }
    
}
