<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    protected $fillable =[
        'title','venue','attendees','attendees','datefrom','dateto','timestarted','speakers','status','eventimage','details'
    ];

      public function attends(){
    return $this->hasMany('App\Models\Attendance');
  }
      public function sponsors(){
    return $this->hasMany('App\Models\Sponsor');
  }
}
