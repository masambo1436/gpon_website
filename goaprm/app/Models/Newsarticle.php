<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Newsarticle extends Model
{
    use HasFactory;
    protected $fillable =[
        'title','slug','postby','description','imagefile'
        ];
          
        public function comments(){
            return $this->hasMany('App\Models\Comment');
        }
}
