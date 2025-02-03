<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class volunteer extends Model
{
    use HasFactory;
    protected $fillable=[
      'name','email','phone','dob','gender','grade','address','city','state','discipline','skills','work','coverletter','status'
        ];
}
