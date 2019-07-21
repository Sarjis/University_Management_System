<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', [
    'uses' => 'MainController@index',
    'as' => '/'
]);
Route::get('/get-days', [
    'uses' => 'MainController@getDays',
    'as' => '/get-days'
]);
Route::get('/get-rooms', [
    'uses' => 'MainController@getRooms',
    'as' => '/get-rooms'
]);
Route::get('/emailChecker/{email}', [
    'uses' => 'StudentController@emailChecker',
    'as' => '/emailChecker'
]);

Route::get('/get-course-code', [
    'uses' => 'CourseController@getCourseCodes',
    'as' => '/get-course-code'
]);
Route::get('/fetch-credit/{id}', [
    'uses' => 'TeacherController@fetchCredit',
    'as' => '/fetch-credit'
]);
Route::post('/course-assign-teacher', [
    'uses' => 'TeacherController@course_assign_teacher',
    'as' => '/course-assign-teacher'
]);
Route::get('/fetch-name-code/{id}', [
    'uses' => 'CourseController@fetchNameCode',
    'as' => '/fetch-name-code'
]);
Route::get('/fetch-course-info/{id}', [
    'uses' => 'CourseController@fetch_course_info',
    'as' => '/fetch-course-info'
]);
Route::get('/c', [
    'uses' => 'CourseController@test',
    'as' => '/c'
]);
Route::get('/fetch-teacher/{id}', [
    'uses' => 'MainController@fetchTeacher',
    'as' => '/fetch-teacher'
]);
Route::get('/view-departments', [
    'uses' => 'DepartmentController@viewDepartments',
    'as' => '/view-departments'
]);
Route::get('/view-semesters', [
    'uses' => 'CourseController@getSemesters', //semester needs for course
    'as' => '/view-semesters'
]);
Route::post('/save-department', [
    'uses' => 'DepartmentController@saveDepartment',
    'as' => '/save-department'
]);
Route::post('/save-course', [
    'uses' => 'CourseController@saveCourse',
    'as' => '/save-course'
]);
Route::post('/save-teacher', [
    'uses' => 'TeacherController@saveTeacherInfo',
    'as' => '/save-teacher'
]);
Route::post('/save-student', [
    'uses' => 'StudentController@saveStudentInfo',
    'as' => '/save-student'
]);
Route::post('/allocate-class-rooms', [
    'uses' => 'ClassroomController@allocateClassRoom',
    'as' => '/allocate-class-rooms'
]);
Route::get('/forms', [
    'uses' => 'ClassroomController@allocateClassRoom2',
    'as' => 'forms'
]);
Route::get('/get-class-room-info/{id}', [
    'uses' => 'ClassroomController@get_class_room_info',
    'as' => '/get-class-room-info'
]);
Route::get('/fetch-reg-no', [
    'uses' => 'StudentController@fetchRegistrationNumber',
    'as' => '/fetch-reg-no'
]);
Route::get('/fetch-student-info/{id}', [
    'uses' => 'StudentController@fetchStudentInfo',
    'as' => '/fetch-student-info'
]);

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
