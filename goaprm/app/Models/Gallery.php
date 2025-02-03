<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;
    protected $fillable =[
        'caption', 'thumbnail'
    ];

    public function galleryimages(){
        return $this->hasMany('App\Models\Galleryimage');
    }
}
