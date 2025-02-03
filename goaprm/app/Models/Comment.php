<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $fillable =[
        'newsarticle_id', 'name','email','comment'
       ];
     
       public function newsarticles(){
           return $this->belongsTo('App\Models\Newsarticle');
       }
}
