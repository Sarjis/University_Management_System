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
        <h3>Course Information</h3>
        <table class="table table-info table-bordered">
            <tr>
                <th>Code</th>
                <th>Name/Title</th>
                <th>Semester</th>
                <th>Assigned To</th>
            </tr>
            <tr v-for="courseInfo in courseInfos">
                <td>{{courseInfo.code}}</td>
                <td>{{courseInfo.name}}</td>
                <td v-if="courseInfo.semester" >{{courseInfo.semester.name}}</td>
                <td v-if="courseInfo.teacher && courseInfo.teacher_id !==0">{{courseInfo.teacher.name}}</td>
                <td v-else>Not Assigned Yet</td>
            </tr>
        </table>
    </div>
</template>

<script>
    export default {
        name: "ViewCourseStat",
        mounted() {
            this.$store.dispatch('getAllDepartments')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            },

            courseInfos() {
                return this.$store.getters.getCourseInfo
            }
        },
        methods: {
            fetchCourseInfo: function () {
                this.$store.dispatch('fetchCourseInfo', this.department_id)
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