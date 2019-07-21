<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    function department()
    {
        return $this->belongsTo(Department::class);
    }

    function course()
    {
        return $this->belongsTo(Course::class);
    }

    function room()
    {
        return $this->belongsTo(Rooms::class);
    }

    function day()
    {
        return $this->belongsTo(Day::class);
    }
}
