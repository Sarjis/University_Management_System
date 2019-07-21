<template>
    <div>
        <form @submit.prevent="allocateClassRoom">
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
                {{form.department_id}}
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Course</label>

                <div class="col-sm-10">
                    <select v-validate="'required'" name="course_id" v-model="form.course_id"
                            class="form-group custom-select"
                            :class="{ 'is-invalid': form.errors.has('course_id') }">

                        <option disabled selected>--select--</option>
                        <option :value="courseCode.id" v-for="courseCode in courseCodes">{{courseCode.code}}</option>
                    </select>
                    <span class="alert-error">{{ errors.first('course_id') }}</span>
                    <has-error :form="form" field="course_id"></has-error>
                </div>
                {{form.course_id}}
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Room</label>

                <div class="col-sm-10">
                    <select name="room_id" v-model="form.room_id" class="form-group custom-select"
                            :class="{ 'is-invalid': form.errors.has('room_id') }">

                        <option disabled selected>--select--</option>
                        <option :value="room.id" v-for="room in rooms">{{room.number}}</option>
                    </select>
                    <has-error :form="form" field="room_id"></has-error>
                </div>
                {{form.room_id}}
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Day</label>

                <div class="col-sm-10">
                    <select name="day_id" v-model="form.day_id" class="form-group custom-select"
                            :class="{ 'is-invalid': form.errors.has('day_id') }">

                        <option disabled selected>--select--</option>
                        <option :value="day.id" v-for="day in days">{{day.name}}</option>
                    </select>
                    <has-error :form="form" field="day_id"></has-error>
                </div>
                {{form.day_id}}
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-sm-5">
                        <label class="col-sm-2 control-label">From</label>

                        <div class="col-sm-3" >
                            <v-app id="inspire" >
                                <div  >
                                    <v-time-picker
                                            v-model="form.from"
                                            type="month"
                                    ></v-time-picker>

                                </div>
                            </v-app>
                        </div>
                        {{form.from}}
                    </div>
                    <div class="col-sm-5">
                        <label class="col-sm-2 control-label">To</label>

                        <div class="col-sm-3">
                            <v-app id="inspire">
                                <div>
                                    <v-time-picker
                                            v-model="form.to"
                                            height=10%
                                    ></v-time-picker>

                                </div>
                            </v-app>
                        </div>
                        {{form.to}}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10">
                        <button type="submit"  class="btn btn-success btn-block">Allocate Classroom</button>
                    </div>
                </div>
            </div>

        </form>
    </div>
</template>

<script>
    import {Form, HasError, AlertError} from 'vform'

    export default {
        name: "AllocateClassRoom",
        data() {
            return {
                form: new Form({
                    department_id: '',
                    course_id: '',
                    room_id: '',
                    day_id: '',
                    from: '',
                    to: '',
                })
            }
        },
        mounted() {
            this.$store.dispatch('getAllDepartments')
            this.$store.dispatch('getCourseCode')
            this.$store.dispatch('getDays')
            this.$store.dispatch('getRooms')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },

            courseCodes() {
                return this.$store.getters.getCourseCodes
            },

            days() {
                return this.$store.getters.getDays
            },
            rooms() {
                return this.$store.getters.getRooms
            },

        },
        methods: {
            allocateClassRoom() {
                this.form.post('/allocate-class-rooms').then(function (res) {
                    alert('Yes')
                }).catch(function (err) {
                    alert('No')
                })
            },
            //fromClassTimeChecker() {
                //alert('askjak')
                // axios.get('/from-time').then(function (res) {
                //     alert('yes')
                // }).catch(function (err) {
                //     alert('No')
                // })
            //}
        }
    }
</script>

<style scoped>

</style>