<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        factory(\App\Department::class,10)->create();
        factory(\App\Course::class,10)->create();
        factory(\App\Semester::class,8)->create();
        factory(\App\Designation::class,8)->create();
        factory(\App\Teacher::class,10)->create();
        factory(\App\Day::class,7)->create();
        factory(\App\Student::class,10)->create();
        factory(\App\Rooms::class,10)->create();
    }
}
