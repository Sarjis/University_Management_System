<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    function teachers()
    {
        return $this->hasMany(Teacher::class);
    }

    function courses()
    {
        return $this->hasMany(Course::class);
    }

    function semesters()
    {
        return $this->hasMany(Course::class);
    }
}
