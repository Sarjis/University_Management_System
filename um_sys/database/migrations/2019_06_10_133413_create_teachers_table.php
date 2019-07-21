<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachersTable extends Migration
{

    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->text('address');
            $table->string('email',191)->unique();
            $table->string('contact_no',191)->unique();
            $table->integer('designation_id');
            $table->integer('department_id');
            $table->float('credit');
            $table->float('remaining_credit');
            $table->timestamps();
        });
    }

    /**
     * $teacher->name = $request->name;
    $teacher->address = $request->address;
    $teacher->email = $request->email;
    $teacher->credit = $request->credit;
    $teacher->contact_no = $request->contact_no;
    $teacher->designation_id = $request->designation_id;
    $teacher->department_id
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teachers');
    }
}
