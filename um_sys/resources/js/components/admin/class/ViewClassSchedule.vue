<template>
    <div>
        <div class="m-4">
            <label class="text-center text-primary tex">Departments</label>
            <select v-model="department_id" @change="fetchCourseInfo" class="custom-select select2-dropdown--above">
                <option disabled selected>--select--</option>
                <option :value="department.id" v-for="(department,i) in departments">{{++i}}. {{department.name}}
                </option>
            </select>
        </div>
        <h3>Class Room Information</h3>
        <table class="table table-info table-bordered">
            <tr>
                <th>Course Code</th>
                <th>Course Name</th>
                <th>Schedule Info</th>
            </tr>

            <tr v-if="getClassRoomInfo"  v-for="classRoomInfo in getClassRoomInfo">
                <td v-if="classRoomInfo.course">{{classRoomInfo.course.code}}</td>
                <td v-if="classRoomInfo.course">{{classRoomInfo.course.name}}</td>
                <td v-if="classRoomInfo.room && classRoomInfo.day && classRoomInfo.from>=13">Room No: {{classRoomInfo.room.number}}, {{classRoomInfo.day.name}},{{classRoomInfo.from}} PM-{{classRoomInfo.to}} PM</td>
                <td v-else="classRoomInfo.room && classRoomInfo.day">Room No: {{classRoomInfo.room.number}}, {{classRoomInfo.day.name}},{{classRoomInfo.from}} AM-{{classRoomInfo.to}} AM,   </td>
            </tr>
            <tr v-if="getClassRoomInfo.length<1">
                <td></td>
                <td>No Course Assigned yet</td>
                <td></td>
            </tr>

        </table>
    </div>
</template>

<script>
    export default {
        name: "ViewClassSchedule",
        mounted() {
            this.$store.dispatch('getAllDepartments')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },

            getClassRoomInfo() {
                return this.$store.getters.getClassRoomInfo
            }
        },
        methods: {
            fetchCourseInfo: function () {
                this.$store.dispatch('fetchClassRoomInfo', this.department_id)
            }
        },
        data() {
            return {
                department_id: ''
            }
        }
    }
</script>

<style scoped>

</style>