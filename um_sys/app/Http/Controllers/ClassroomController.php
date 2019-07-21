<?php

namespace App\Http\Controllers;

use App\Classroom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClassroomController extends Controller
{
    private function validation($request)
    {
        $this->validate($request, [
            'department_id' => 'required',
            'course_id' => 'required',
            'room_id' => 'required',
            'day_id' => 'required',
            'from' => 'required',
            'to' => 'required',
        ]);
    }

    function allocateClassRoom(Request $request)
    {
        $day_id = $request->day_id;
        $room_id = $request->room_id;
        $fromTime = $request->from;
        $toTime = $request->to;
        $dayCheck = Classroom::all()->where('day_id', '=', $day_id);


        $roomCheck = Classroom::all()->where('room_id', '=', $room_id);
        // return $roomCheck;
//        ///$this->validation($request);

        $check = '';
        if (sizeof($roomCheck) == 0 && sizeof($dayCheck) == 0) {
            $check = '';

        } else if (sizeof($roomCheck) > 0 && sizeof($dayCheck) > 0) {
            $class_rooms = Classroom::all();
            $status = false;
            foreach ($class_rooms as $class_room) {
                if (($fromTime >= $class_room->from && $fromTime < $class_room->to) ||
                    ($toTime > $class_room->from && $toTime <= $class_room->to) && $class_room->checker == 1
                    || ($fromTime < $class_room->from && $toTime >= $class_room->from)
                    || (($fromTime < $class_room->from || $fromTime < $class_room->to) && ($toTime > $class_room->to || $toTime > $class_room->from))
                ) {
                    $status = true;
                }
            }
            if (($status == false) && ($fromTime < $class_room->from && $fromTime < $class_room->to) || ($fromTime > $class_room->from && $fromTime > $class_room->to)) {
                return 'Allocated';
            } else {
                return 'Not';
            }
        }


        $class_room = new Classroom();
        $class_room->department_id = $request->department_id;
        $class_room->course_id = $request->course_id;
        $class_room->room_id = $request->room_id;
        $class_room->day_id = $request->day_id;
        $class_room->from = $request->from;
        $class_room->to = $request->to;
        $class_room->checker = 1;
        $class_room->save();

        // return $request->all();


    }

    function get_class_room_info($id)
    {
        $classRooms = Classroom::with( 'room', 'day', 'course')->where('department_id', $id)->get();

        return response()->json([
            'classRooms' => $classRooms
        ], 200);
    }
}
