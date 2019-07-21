<?php

namespace App\Http\Controllers;

use App\Course;
use App\Day;
use App\Department;
use App\Rooms;
use App\Teacher;
use Illuminate\Http\Request;

class MainController extends Controller
{
    function index()
    {
        return view('admin.index');
    }

    function fetchTeacher($id)
    {
        $teachers = Department::with('teachers', 'courses')->where('id', $id)->get();
        // $teachers = $teachers->name;
        return response()->json([
            'teachers' => $teachers
        ],200);
    }

    function getRooms()
    {
        $rooms = Rooms::all('number','id');
        // $teachers = $teachers->name;
        return response()->json([
            'rooms' => $rooms
        ], 200);
    }

    function getDays()
    {
        $days = Day::all('name','id');
        // $teachers = $teachers->name;
        return response()->json([
            'days' => $days
        ], 200);
    }


}
