<?php

namespace App\Http\Controllers;

use App\Department;
use App\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    private function validation($request)
    {

        if (!file_exists($request->email)) {
            $this->validate($request, [
                'name' => 'required',
                'address' => 'required',
                'email' => 'required|email|unique:teachers',
                'contact_no' => 'required',
                'date' => 'required',
                'department_id' => 'required',
            ]);
            return true;
        } else {
            return false;
        }

    }

    function saveStudentInfo(Request $request)
    {
        $dept = Department::find($request->department_id);

        $lastProject = Student::orderBy('created_at', 'desc')->first();

        $check = $this->validation($request);
        if ($check) {
            $student = new Student();
            $student->name = $request->name;
            $student->address = $request->address;
            $student->email = $request->email;

            $student->contact_no = $request->contact_no;
            $student->date = $request->date;
            $student->department_id = $request->department_id;
            $student->var = 1;

            if (isset($lastProject)) {
                // Sum 1 + last id
                $student->registration_number = $dept->name . '-' . date('Y') . '-' . '00' . ($lastProject->id + 1);
            } else {
                $student->registration_number = $dept->name . '-' . date('Y') . '0001';
            }

            $student->save();
            return 'true4';
        } else {
            return 'false4';
        }
    }

    function emailChecker($email)
    {

        $output = Student::where('email', $email)->first();

        if ($output) {
            return 'Email has already taken';
        } else {
            return 'Email is available';
        }

    }

    function fetchRegistrationNumber()
    {
        $registrationNumbers = Student::all('registration_number','id');

        return response()->json([
            'registrationNumbers' => $registrationNumbers
        ], 200);
    }

    function fetchStudentInfo($id)
    {
        $student_info = Student::with('department')->where('id',$id)->first();

        return response()->json([
            'student_info' => $student_info
        ], 200);
    }
}
