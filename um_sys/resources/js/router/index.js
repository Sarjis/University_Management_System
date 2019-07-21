import Vue from 'vue'
import Router from 'vue-router'
import Department from '../components/admin/department/Department'
import ViewDepartment from '../components/admin/department/ViewDepartment'
import Course from '../components/admin/Course'
import Student from '../components/admin/Student'
import Teacher from '../components/admin/teacher/Teacher'
import CourseAssignToTeacher from '../components/admin/teacher/CourseAssignToTeacher'
import ViewCourseStat from '../components/admin/course/ViewCourseStat'
import RegisterStudent from '../components/admin/student/RegisterStudent'
import AllocateClassRoom from '../components/admin/class/AllocateClassRoom'
import ViewClassSchedule from '../components/admin/class/ViewClassSchedule'
import EnrollInCourse from '../components/admin/course/EnrollInCourse'

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/save-department',
            name: 'Department',
            component: Department
        },{
            path: '/view-department',
            name: 'ViewDepartment',
            component: ViewDepartment
        },{
            path: '/course-ui',
            name: 'Course',
            component: Course
        },{
            path: '/student',
            name: 'Student',
            component: Student
        }, {
            path: '/new-teacher',
            name: 'Teacher',
            component: Teacher
        },{
            path: '/course-assign-teacher',
            name: 'CourseAssignToTeacher',
            component: CourseAssignToTeacher
        },{
            path: '/view-course-stat',
            name: 'ViewCourseStat',
            component: ViewCourseStat
        },{
            path: '/register-student',
            name: 'RegisterStudent',
            component: RegisterStudent
        }, {
            path: '/allocate-class-room',
            name: 'AllocateClassRoom',
            component: AllocateClassRoom
        },{
            path: '/view-class-schedule',
            name: 'ViewClassSchedule',
            component: ViewClassSchedule
        },{
            path: '/enroll-in-course',
            name: 'EnrollInCourse',
            component: EnrollInCourse
        },
    ],

});