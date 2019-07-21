<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\User;
use Illuminate\Support\Str;
use Faker\Generator as Faker;


$factory->define(\App\Department::class, function (Faker $faker) {
    return [
        'code' => $faker->unique()->countryCode,
        'name' => $faker->unique()->country,
    ];
});
$factory->define(\App\Semester::class, function (Faker $faker) {
    return [
        'name' => $faker->unique()->colorName,
    ];
});
$factory->define(\App\Designation::class, function (Faker $faker) {
    return [
        'name' => $faker->unique()->colorName,
    ];
});
$factory->define(\App\Course::class, function (Faker $faker) {
    return [
        'code' => $faker->unique()->email,
        'name' => $faker->unique()->company,
        'credit' => rand(0.5,3),
        'description' => $faker->paragraph,
        'department_id' => rand(1,12),
        'semester_id' => rand(1,8),
        'teacher_id' => rand(1,8),
        'is_booked' => 0,
    ];
});
$factory->define(\App\Teacher::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'address' => $faker->paragraph,
        'email' => $faker->unique()->email,
        'contact_no' => $faker->unique()->phoneNumber,
        'designation_id' => rand(1, 4),
        'department_id' => rand(1, 12),
        'credit' => 30,
        'remaining_credit' => 30,
    ];

});
$factory->define(\App\Student::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'address' => $faker->paragraph,
        'email' => $faker->unique()->email,
        'contact_no' => $faker->unique()->phoneNumber,
        'date' => $faker->date('y-m-d'),
        'department_id' => rand(1, 12),
        'registration_number' => $faker->unique()->countryCode.'-'.date('Y').'-',
        'var' => 1,

    ];

})

;$factory->define(\App\Day::class, function (Faker $faker) {
    return [
        'name' => $faker->unique()->dayOfWeek

    ];

});;$factory->define(\App\Rooms::class, function (Faker $faker) {
    return [
        'number' => rand(100,105)

    ];

});
