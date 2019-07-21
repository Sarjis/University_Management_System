<template>
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">New Department Form</h3>
        </div>
        <form @submit.prevent="saveDepartmentInfo" class="form-horizontal">
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

            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-info">Save Department Info</button>
            </div>
        </form>
    </div>
</template>

<script>
    import {Form, HasError, AlertError} from 'vform'

    export default {
        name: "Department",
        data() {
            return {
                form: new Form({
                    code: '',
                    name: ''
                })
            }
        },
        methods: {
            saveDepartmentInfo() {
                this.form.post('/save-department').then(function (res) {
                    alert('yes')
                }).catch(function (err) {
                    alert('no')
                })
            }
        }
    }
</script>

<style scoped>

</style>