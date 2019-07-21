<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    function semester()
    {
        return $this->belongsTo(Semester::class);
    }

    function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }

    function department()
    {
        return $this->belongsTo(Department::class);
    }

    function classroom()
    {
        return $this->hasOne(Classroom::class);
    }
}
