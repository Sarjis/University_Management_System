<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Student Registration Form</h3>
        </div>
        <form @submit.prevent="saveStudentInfo" class="form-horizontal">
            <div class="card-body">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                        <input v-model="form.name" name="name" type="text" class="form-control" placeholder="Name"
                               v-validate="'required'">
                    </div>
                    <span class="alert-error">{{ errors.first('name') }}</span>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                        <input @blur="emailCheck" v-validate="'required|email'" name="email" v-model="form.email"
                               type="email" min="0" max="5"
                               class="form-control"
                               placeholder="email">
                        <!--<has-error :form="form" field="email"></has-error>-->
                        <span class="alert-error">{{ errors.first('email') }}</span>
                    </div>
                    <span class="text-primary" v-if="er">{{er}}</span>

                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Contact No</label>

                    <div class="col-sm-10">
                        <input v-model="form.contact_no" name="contact_number" type="number" class="form-control"
                               placeholder="contact number"
                               v-validate="'required'">
                    </div>
                    <span class="alert-error">{{ errors.first('contact_number') }}</span>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Date</label>

                    <div class="col-sm-10">
                        <datepicker v-model="form.date"></datepicker>
                    </div>
                    {{form.date}}
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Address</label>

                    <div class="col-sm-10">
                        <ckeditor :editor="editor" v-model="form.address" name="address"
                                  v-validate="'required'"></ckeditor>
                    </div>

                    <span class="alert-error">{{ errors.first('address') }}</span>
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


            </div>
            <div class="card-footer">
                <button v-if="er!=='Email is available'||form.name===''||form.address===''||form.email===''||form.contact_no==='' ||form.department_id===''"
                        disabled type="submit" class="btn btn-info">Register
                </button>
                <button v-else type="submit" class="btn btn-info">Register</button>

            </div>
        </form>
    </div>
</template>

<script>
    import ClassicEditor from '@ckeditor/ckeditor5-build-classic';

    import {Form, HasError, AlertError} from 'vform'
    import Datepicker from 'vuejs-datepicker';

    export default {
        name: "RegisterStudent",
        data() {
            return {
                form: new Form({
                    name: '',
                    address: '',
                    email: '',
                    contact_no: '',
                    date: new Date(),
                    department_id: '',

                }),
                editor: ClassicEditor,
                error: [],
                er: ''

            }
        },
        methods: {
            saveStudentInfo() {
                this.error = ''
                let self = this
                this.$validator.validateAll().then(function () {
                    self.form.post('/save-student').then(function (res) {

                        alert('yes')
                    }).catch(function (err) {
                        if (err.response.status === 422) {
                            self.error = err.response.data.errors
                        }
                    })
                })

            },
            emailCheck() {
                let self = this
                //alert(this.form.email)
                if (this.form.email !== '') {
                    axios.get('/emailChecker/' + this.form.email).then(function (res) {
                        self.er = res.data
                        //console.log(res.data)
                    }).catch(function (err) {
                        alert('no')
                    })
                } else {
                    alert('Nop')
                }


            },

        },
        mounted() {
            this.$store.dispatch('getAllDepartments')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },

        },
        components: {
            Datepicker
        }
    }
</script>

<style scoped>

</style>