<?php

namespace App\Http\Controllers;

use App\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    private function validation($request)
    {
        $this->validate($request, [
            'code' => 'required|unique:departments',
            'name' => 'required|unique:departments',
        ]);
    }

    function saveDepartment(Request $request)
    {
        if ($this->validation($request)) {
            $department = new Department();
            $department->code = $request->code;
            $department->name = $request->name;
            $department->save();
        } else {
            return 'wrong';
        }

    }

    function viewDepartments()
    {
        //return 'Hello';
        $departments = Department::all();

        return response()->json([
            'departments' => $departments
        ], 200);
    }
}
