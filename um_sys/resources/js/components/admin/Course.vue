<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">New Course</h3>
        </div>
        <form @submit.prevent="saveCourseInfo" class="form-horizontal">
            <div class="card-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Code</label>

                    <div class="col-sm-10">
                        <input v-model="form.code" type="text" class="form-control" placeholder="Code"
                               :class="{ 'is-invalid': form.errors.has('code') }">
                        <has-error :form="form" field="code"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                        <input v-model="form.name" type="text" class="form-control" placeholder="Name"
                               :class="{ 'is-invalid': form.errors.has('name') }">
                        <has-error :form="form" field="name"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Credit</label>

                    <div class="col-sm-10">
                        <input v-model="form.credit" type="number" min="0" max="5" class="form-control" placeholder="Credit"
                               :class="{ 'is-invalid': form.errors.has('credit') }">
                        <has-error :form="form" field="credit"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description</label>

                    <div  class="col-sm-10">
                        <ckeditor :editor="editor" v-model="form.description"></ckeditor>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Department</label>

                    <div class="col-sm-10">
                        <select v-model="form.department_id" class="form-group custom-select" :class="{ 'is-invalid': form.errors.has('department_id') }">

                            <option disabled selected>--select--</option>
                            <option :value="dept.id" v-for="dept in departments">{{dept.name}}</option>
                        </select>
                        <has-error :form="form" field="department_id"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Semester</label>

                    <div class="col-sm-10">
                        <select v-model="form.semester_id" class="form-group custom-select" :class="{ 'is-invalid': form.errors.has('semester_id') }">

                            <option disabled selected>--select--</option>
                            <option :value="semester.id" v-for="semester in semesters">{{semester.name}}</option>
                        </select>
                        <has-error :form="form" field="semester_id"></has-error>
                    </div>
                </div>

            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-info">Save Course Info</button>
            </div>
        </form>
    </div>
</template>

<script>
    import ClassicEditor from '@ckeditor/ckeditor5-build-classic';

    import {Form, HasError, AlertError} from 'vform'
    export default {
        name: "Course",
        data() {
            return {
                form: new Form({
                    code: '',
                    name: '',
                    credit:'',
                    description:'',
                    semester_id: '',
                    department_id: '',
                }),
                editor:ClassicEditor,
            }
        },
        methods: {
            saveCourseInfo() {
                this.form.post('/save-course').then(function (res) {
                    alert(res.data)
                }).catch(function (err) {
                    alert('no')
                })
            }
        },
        mounted() {
            this.$store.dispatch('getAllDepartments')
            this.$store.dispatch('getAllSemesters')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },
            semesters() {
                return this.$store.getters.getSemesters
            },
        }
    }
</script>

<style scoped>

</style>