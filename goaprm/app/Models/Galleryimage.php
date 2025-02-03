<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galleryimage extends Model
{
    use HasFactory;
    protected $fillable =[
        'gallery_id', 'images'
       ];

       public function gallery(){
        return $this->belongsTo('App\Models\Gallery');
    }
}
