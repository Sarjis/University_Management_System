import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

const store = new Vuex.Store({
    state: {
        departments: [],
        semesters: [],
        teachers: [],
        credit: [],
        nameCode: [],
        courses: [],
        courseCodes: [],
        days: [],
        rooms: [],
        classRooms: [],
        registrationNumbers: [],
        student_info: [],
    },
    getters: {
        getDepartments(state) {
            return state.departments
        }, getSemesters(state) {
            return state.semesters
        },
        getTeacherNameCourseCode(state) {
            return state.teachers
        },
        getCredit(state) {
            return state.credit
        },

        getNameCode(state) {
            return state.nameCode
        },
        getCourseInfo(state) {
            return state.courses
        },
        getCourseCodes(state) {
            return state.courseCodes
        },
        getDays(state) {
            return state.days
        },
        getRooms(state) {
            return state.rooms
        },
        getClassRoomInfo(state) {
            return state.classRooms
        },
        getRegistrationNumber(state) {
            return state.registrationNumbers
        },getStudentInfo(state) {
            return state.student_info
        },

    },

    mutations: {
        getAllDepartments(state, payload) {
            return state.departments = payload
        },
        getAllSemesters(state, payload) {
            return state.semesters = payload
        },
        fetch_TeacherName_CourseCode(state, payload) {
            return state.teachers = payload
        },
        fetch_TeacherCredit(state, payload) {
            return state.credit = payload
        },

        fetch_Name_Code(state, payload) {
            return state.nameCode = payload
        },

        fetchCourseInfo(state, payload) {
            return state.courses = payload
        },

        getCourseCode(state, payload) {
            return state.courseCodes = payload
        },
        getDays(state, payload) {
            return state.days = payload
        },
        getRooms(state, payload) {
            return state.rooms = payload
        },

        fetchClassRoomInfo(state, payload) {
            return state.classRooms = payload
        },
        fetch_studentRegistration_no(state, payload) {
            return state.registrationNumbers = payload
        },

        fetch_studentInfoById(state, payload) {
            return state.student_info = payload
        },
    },
    actions: {

        searchByCityName(context, searchItem) {
            axios.get('/search-city?s=' + searchItem).then(function (res) {
                //console.log(res.data.cities)
                context.commit('searchByCityName', res.data.cities)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },
        getAllDepartments(context) {
            axios.get('/view-departments').then(function (res) {
                // console.log(res.data.departments)
                context.commit('getAllDepartments', res.data.departments)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },
        getAllSemesters(context) {
            axios.get('/view-semesters').then(function (res) {
                //console.log(res.data.semesters)
                context.commit('getAllSemesters', res.data.semesters)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },
        fetch_TeacherName_CourseCode(context, id) {
            axios.get('/fetch-teacher/' + id).then(function (res) {
                //console.log(res.data.teachers)
                context.commit('fetch_TeacherName_CourseCode', res.data.teachers)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },
        fetch_TeacherCredit(context, id) {
            axios.get('/fetch-credit/' + id).then(function (res) {
                //console.log(res.data.credit)
                context.commit('fetch_TeacherCredit', res.data.credits)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        fetch_Name_Code(context, id) {
            axios.get('/fetch-name-code/' + id).then(function (res) {
                console.log(res.data.nameCode)
                context.commit('fetch_Name_Code', res.data.nameCode)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        fetchCourseInfo(context, id) {
            axios.get('/fetch-course-info/' + id).then(function (res) {
                console.log(res.data.courses)
                context.commit('fetchCourseInfo', res.data.courses)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        getCourseCode(context,) {
            axios.get('/get-course-code').then(function (res) {
                console.log(res.data.courseCodes)
                context.commit('getCourseCode', res.data.courseCodes)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        getDays(context,) {
            axios.get('/get-days').then(function (res) {
                console.log(res.data.days)
                context.commit('getDays', res.data.days)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        getRooms(context) {
            axios.get('/get-rooms').then(function (res) {
                console.log(res.data.rooms)
                context.commit('getRooms', res.data.rooms)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        fetchClassRoomInfo(context, id) {
            axios.get('/get-class-room-info/' + id).then(function (res) {
                console.log(res.data.classRooms)
                context.commit('fetchClassRoomInfo', res.data.classRooms)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        fetch_studentRegistration_no(context) {
            axios.get('/fetch-reg-no').then(function (res) {
                console.log(res.data.registrationNumbers)
                context.commit('fetch_studentRegistration_no', res.data.registrationNumbers)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

        fetch_studentInfoById(context,id) {
            axios.get('/fetch-student-info/'+id).then(function (res) {
                console.log(res.data.student_info)
                context.commit('fetch_studentInfoById', res.data.student_info)
            }).catch(function (err) {
                alert('Not possible from actions in store')
            })
        },

    }
});

export default store;