<?php

namespace App\Http\Controllers;

use App\Course;
use App\Semester;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    private function validation($request)
    {
        $credit = $request->credit;
        if (0.5 < $credit && $credit < 5) {
            $this->validate($request, [
                'code' => 'required|unique:courses',
                'name' => 'required|unique:courses',
                'credit' => 'required',
                'description' => 'required',
                'department_id' => 'required',
                'semester_id' => 'required',
            ]);
            return true;
        } else {
            return false;
        }

    }

    function getSemesters()
    {
        $semesters = Semester::all();
        return response()->json([
            'semesters' => $semesters
        ], 200);
    }

    function saveCourse(Request $request)
    {
        $check = $this->validation($request);
        if ($check) {
            $course = new Course();
            $course->code = $request->code;
            $course->name = $request->name;
            $course->credit = $request->credit;
            $course->description = $request->description;
            $course->department_id = $request->department_id;
            $course->semester_id = $request->semester_id;
            $course->save();
            return 'true2';
        } else {
            return 'false2';
        }
    }

    function fetchNameCode($id)
    {
        $var = 0;
        $nameCode = Course::all()->where('id', $id)->where('is_booked', $var);

        return response()->json([
            'nameCode' => $nameCode
        ], 200);
    }

    function fetch_course_info($id)
    {
        //$courses = Department::with('teachers','semesters')->where('id',$id);
//        ->where('department_id', $id)
        $courses = Course::with('semester','teacher','classroom')->where('department_id', $id)->get();
        return response()->json([
            'courses' => $courses
        ], 200);
    }

    function getCourseCodes()
    {
        //$courses = Department::with('teachers','semesters')->where('id',$id);
//        ->where('department_id', $id)
        $courseCodes = Course::all('code','id');
        return response()->json([
            'courseCodes' => $courseCodes
        ], 200);
    }

    function test()
    {
        $courses = Course::all();
       // return view('welcome', ['posts' => $courses]);
        return response()->json([
            'courses' => $courses
        ], 200);
    }
}
