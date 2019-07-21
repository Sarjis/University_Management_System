<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Enroll In Course</h3>
        </div>
        <form @submit.prevent="saveTeacherInfo" class="form-horizontal">
            <div class="card-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Student Reg. No.</label>

                    <div class="col-sm-10">
                        <select @change="fetch_studentRegistration_no" v-model="form.student_id"
                                class="form-group custom-select" name="student_id"
                                :class="{ 'is-invalid': form.errors.has('registration_number') }">

                            <option disabled selected>--select--</option>
                            <option :value="number.id" v-for="number in registrationNumbers">
                                {{number.registration_number}}
                            </option>
                        </select>
                        <has-error :form="form" field="student_id"></has-error>
                    </div>
                    {{form.student_id}}
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                        <input :value="student_info.name" type="text" disabled class="form-control"
                               placeholder="Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                        <input :value="student_info.email" type="email" disabled class="form-control"
                               placeholder="email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Department</label>

                    <div class="col-sm-10">
                        <input v-if="student_info.department" :value="student_info.department.name" type="text" disabled class="form-control"
                               placeholder="Department" name="department">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Select Course</label>
                    <ul class="nav-link">
                        <!--<li class="nav-item" v-for="teacher_code in teachers_codes">-->
                        <!--<select @change="fetch_Name_Code" v-model="form.course_id" class="form-group custom-select">-->
                        <!--<option disabled selected>&#45;&#45;select&#45;&#45;</option>-->
                        <!--<option :value="course.id" v-if="teacher_code.courses"-->
                        <!--v-for="course in teacher_code.courses">-->
                        <!--{{course.is_booked===0 ?course.code:'All Course Distributed'}}-->
                        <!--</option>-->
                        <!--</select>-->
                        <!--</li>-->
                    </ul>
                    {{form.course_id}}
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Date</label>
                    <ul class="nav-link">
                        <!--<li class="nav-item" v-for="teacher_code in teachers_codes">-->
                        <!--<select @change="fetch_Name_Code" v-model="form.course_id" class="form-group custom-select">-->
                        <!--<option disabled selected>&#45;&#45;select&#45;&#45;</option>-->
                        <!--<option :value="course.id" v-if="teacher_code.courses"-->
                        <!--v-for="course in teacher_code.courses">-->
                        <!--{{course.is_booked===0 ?course.code:'All Course Distributed'}}-->
                        <!--</option>-->
                        <!--</select>-->
                        <!--</li>-->
                    </ul>
                    {{form.course_id}}
                </div>


            </div>
            <div class="card-footer">
                <button type="submit" disabled class="btn btn-info">Save Teacher Info</button>
            </div>
        </form>
    </div>
</template>

<script>
    import {Form, HasError, AlertError} from 'vform'

    export default {
        name: "EnrollInCourse",
        data() {
            return {
                form: new Form({
                    student_id: '',
                    email: '',
                    course_id: '',
                    day_id: '',
                })
            }
        },
        methods: {
            fetch_studentRegistration_no() {
                this.$store.dispatch('fetch_studentInfoById', this.form.student_id)
            }
        },
        computed: {
            registrationNumbers() {
                return this.$store.getters.getRegistrationNumber
            },
            student_info() {
                return this.$store.getters.getStudentInfo
            },
        },
        mounted() {
            this.$store.dispatch('fetch_studentRegistration_no')
        }
    }
</script>

<style scoped>

</style>