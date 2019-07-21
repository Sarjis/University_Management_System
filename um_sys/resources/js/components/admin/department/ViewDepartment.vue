<template>
    <div class="col-lg-8">
        <table class="table table-bordered table-hover">
            <tr>
                <th>SL</th>
                <th>Code</th>
                <th>Name</th>
            </tr>
            <tr v-for="(department,i) in departments">
                <td>{{++i}}</td>
                <td>{{department.code}}</td>
                <td>{{department.name}}</td>
            </tr>
        </table>
    </div>
</template>

<script>
    export default {
        name: "ViewDepartment",
        mounted() {
            this.$store.dispatch('getAllDepartments')
        },
        computed: {
            departments() {
                return this.$store.getters.getDepartments
            }
        }
    }
</script>

<style scoped>

</style>