<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">New Teacher Assign</h3>
        </div>
        <form @submit.prevent="saveTeacherInfo" class="form-horizontal">
            <div class="card-body">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                        <input v-model="form.name" type="text" class="form-control" placeholder="Name"
                               :class="{ 'is-invalid': form.errors.has('name') }">
                        <has-error :form="form" field="name"></has-error>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Address</label>

                    <div class="col-sm-10">
                        <ckeditor :editor="editor" v-model="form.address"></ckeditor>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                        <input  v-model="form.email" type="email" min="0" max="5"
                               class="form-control"
                               placeholder="email"
                               :class="{ 'is-invalid': form.errors.has('email') }">
                        <has-error :form="form" field="email"></has-error>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Contact No</label>

                    <div class="col-sm-10">
                        <input v-model="form.contact_no" type="text" class="form-control"
                               placeholder="email"
                               :class="{ 'is-invalid': form.errors.has('contact_no') }">
                        <has-error :form="form" field="contact_no"></has-error>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Designation</label>

                    <div class="col-sm-10">
                        <select v-model="form.designation_id" class="form-group custom-select"
                                :class="{ 'is-invalid': form.errors.has('designation_id') }">

                            <option disabled selected>--select--</option>
                            <option :value="semester.id" v-for="semester in semesters">{{semester.name}}</option>
                        </select>
                        <has-error :form="form" field="designation_id"></has-error>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Department</label>

                    <div class="col-sm-10">
                        <select v-model="form.department_id" class="form-group custom-select"
                                :class="{ 'is-invalid': form.errors.has('department_id') }">

                            <option disabled selected>--select--</option>
                            <option :value="dept.id" v-for="dept in departments">{{dept.name}}</option>
                        </select>
                        <has-error :form="form" field="department_id"></has-error>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">Credit to be Taken</label>

                    <div class="col-sm-10">
                        <input v-model="form.credit" type="number" min="10" max="30" class="form-control"
                               placeholder="Credit"
                               :class="{ 'is-invalid': form.errors.has('credit') }">
                        <has-error :form="form" field="credit"></has-error>
                    </div>
                </div>

            </div>
            <div class="card-footer">
                <button  type="submit" class="btn btn-info">Save Teacher Info</button>
            </div>
        </form>
    </div>
</template>

<script>
    import ClassicEditor from '@ckeditor/ckeditor5-build-classic';

    import {Form, HasError, AlertError} from 'vform'

    export default {
        name: "Teacher",
        data() {
            return {
                form: new Form({
                    name: '',
                    address: '',
                    email: '',
                    contact_no: '',
                    designation_id: '',
                    department_id: '',
                    credit: '',

                }),
                editor: ClassicEditor,
            }
        },
        methods: {
            saveTeacherInfo() {
                this.form.post('/save-teacher').then(function (res) {
                    alert(res.data)
                }).catch(function (err) {
                    alert('no')
                })
            },

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