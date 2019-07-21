<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    function department()
    {
        return $this->belongsTo(Department::class);
    }
}
