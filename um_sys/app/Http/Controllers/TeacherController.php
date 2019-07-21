<?php

namespace App\Http\Controllers;

use App\Course;
use App\Teacher;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    private function validation($request)
    {
        $credit = $request->credit;
        if (10 < $credit && $credit < 30) {
            $this->validate($request, [
                'name' => 'required',
                'address' => 'required',
                'email' => 'required|email|unique:teachers',
                'contact_no' => 'required',
                'credit' => 'required',
                'department_id' => 'required',
                'designation_id' => 'required',
            ]);
            return true;
        } else {
            return false;
        }

    }

    function saveTeacherInfo(Request $request)
    {
        $check = $this->validation($request);
        if ($check) {
            $teacher = new Teacher();
            $teacher->name = $request->name;
            $teacher->address = $request->address;
            $teacher->email = $request->email;
            $teacher->credit = $request->credit;
            $teacher->remaining_credit = $request->credit;
            $teacher->contact_no = $request->contact_no;
            $teacher->designation_id = $request->designation_id;
            $teacher->department_id = $request->department_id;
            $teacher->save();
            return 'true3';
        } else {
            return 'false3';
        }
    }

    function fetchCredit($id)
    {
        $credits = Teacher::where('id', $id)->first();

        //return $credit;
        return response()->json([
            'credits'=>$credits
        ],200);
    }

    function course_assign_teacher(Request $request)
    {
        $course =Course::find($request->course_id);
        $teacher = Teacher::find($request->teacher_id);

        if ($teacher->remaining_credit>0){
            $teacher->remaining_credit -= $course->credit;
            $teacher->update();

            $course->is_booked =1;
            $course->teacher_id = $request->teacher_id;
            $course->update();
        }
        return $request->teacher_id;
    }
}
