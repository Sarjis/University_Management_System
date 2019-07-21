<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">New Teacher Assign</h3>
        </div>
        <form @submit.prevent="saveTeacherInfo" class="form-horizontal">
            <div class="card-body">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Department</label>

                    <div class="col-sm-10">
                        <select @change="fetch_TeacherName_CourseCode" v-model="form.department_id"
                                class="form-group custom-select"
                                :class="{ 'is-invalid': form.errors.has('department_id') }">

                            <option disabled selected>--select--</option>
                            <option :value="dept.id" v-for="dept in departments">{{dept.name}}</option>
                        </select>
                        <has-error :form="form" field="department_id"></has-error>
                    </div>
                    {{form.department_id}}
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Teacher</label>
                    <ul class="nav-link">
                        <li class="nav-item" v-for="teacher_code in teachers_codes">
                            <select @change="fetchCredit" v-model="form.teacher_id" class="form-group custom-select">
                                <option disabled selected>--select--</option>
                                <option :value="teacher.id" v-if="teacher_code.teachers"
                                        v-for="teacher in teacher_code.teachers">
                                    {{teacher.name}}
                                </option>
                            </select>
                        </li>
                    </ul>
                    {{form.teacher_id}}

                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Credit to be Taken</label>

                    <div class="col-sm-10">
                        <input :value="credits.credit" type="number" disabled class="form-control"
                               placeholder="Credit"
                               :class="{ 'is-invalid': form.errors.has('credit') }">
                        <has-error :form="form" field="credit"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Remaining Credit</label>

                    <div class="col-sm-10">
                        <input :value="credits.remaining_credit" type="number" disabled class="form-control"
                               placeholder="Credit"
                               :class="{ 'is-invalid': form.errors.has('credit') }">
                        <has-error :form="form" field="credit"></has-error>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Course Code</label>
                    <ul class="nav-link">
                        <li class="nav-item" v-for="teacher_code in teachers_codes">
                            <select @change="fetch_Name_Code" v-model="form.course_id" class="form-group custom-select">
                                <option disabled selected>--select--</option>
                                <option :value="course.id" v-if="teacher_code.courses"
                                        v-for="course in teacher_code.courses">
                                    {{course.is_booked===0 ?course.code:'All Course Distributed'}}
                                </option>
                            </select>
                        </li>
                    </ul>
                    {{form.course_id}}
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                        <input v-for="name in nameCode" :value="name.name" disabled type="text" class="form-control"
                               placeholder="Name">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">Credit</label>

                    <div class="col-sm-10">
                        <input v-for="name in nameCode" :value="name.credit" disabled type="text" class="form-control"
                               placeholder="Credit">
                    </div>
                </div>


            </div>
            <div class="card-footer" >
                <button type="submit" v-for="name in nameCode" v-if="name.credit" class="btn btn-info">Save Teacher Info</button>
                <button type="submit"  disabled class="btn btn-info">Save Teacher Info</button>
            </div>
        </form>
    </div>
</template>

<script>
    import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
    import {Form, HasError, AlertError} from 'vform'

    export default {
        name: "CourseAssignToTeacher",
        data() {
            return {
                form: new Form({
                    department_id: '',
                    teacher_id: '',
                    course_id: '',
                }),
                editor: ClassicEditor,
            }
        },
        methods: {
            saveTeacherInfo() {
                this.form.post('/course-assign-teacher').then(function (res) {
                    alert('yes')
                }).catch(function (err) {
                    alert('no')
                })
            },
            fetch_TeacherName_CourseCode() {
                //alert(this.form.department_id)
                this.$store.dispatch('fetch_TeacherName_CourseCode', this.form.department_id)
            },
            fetchCredit() {
                //alert(this.form.teacher_id)
                this.$store.dispatch('fetch_TeacherCredit', this.form.teacher_id)
            },
            fetch_Name_Code() {
                //alert(this.form.course_id)
                this.$store.dispatch('fetch_Name_Code', this.form.course_id)
            }
        },
        mounted() {
            this.$store.dispatch('getAllDepartments')

        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },
            teachers_codes() {
                return this.$store.getters.getTeacherNameCourseCode
                //return self.form.courses = tea.courses
            },

            credits() {
                return this.$store.getters.getCredit
                //return self.form.courses = tea.courses
            },
            nameCode() {
                return this.$store.getters.getNameCode
            },

        },

    }
</script>

<style scoped>

</style>