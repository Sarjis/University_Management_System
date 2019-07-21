<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <router-link to="/" class="brand-link">
        <img src="{{asset('/')}}admin/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">UMS</span>
    </router-link>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('/')}}admin/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <router-link to="/" class="d-block">Alexander Pierce</router-link>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                    <a href="#" class="nav-link active">
                        <i class="nav-icon fa fa-dashboard"></i>
                        <p>
                            Department Info
                            <i class="right fa fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav-item nav-treeview">
                        <li class="nav-item">
                            <router-link :to="{path:'/save-department'}" class="nav-link">
                                <i class="nav-icon fa fa-circle-o text-warning"></i>
                                <p>New Department</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <router-link :to="{path:'/view-department'}" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>View Department</p>
                            </router-link>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview">
                    <a href="#"  class="nav-link">
                        <i class="nav-icon fa fa-pie-chart"></i>
                        <p>
                             Course Info
                            <i class="right fa fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <router-link :to="{path:'/course-ui'}" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Assign Course</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <router-link :to="{path:'/course-assign-teacher'}" class="nav-link">
                                <i class="nav-icon fa fa-circle-o text-warning"></i>
                                <p>Course Assign</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <router-link :to="{path:'/view-course-stat'}" class="nav-link">
                                <i class="nav-icon fa fa-circle-o text-info"></i>
                                <p>Course Statistics</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <router-link :to="{path:'/enroll-in-course'}" class="nav-link">
                                <i class="nav-icon fa fa-circle-o text-info"></i>
                                <p>Enroll in Course</p>
                            </router-link>
                        </li>

                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-tree"></i>
                        <p>
                            Teacher Info
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">

                        <li class="nav-item">
                            <router-link :to="{path:'/new-teacher'}" class="nav-link">
                                <i class="nav-icon fa fa-circle-o text-danger"></i>
                                <p>Add New Teacher</p>
                            </router-link>
                        </li>

                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-edit"></i>
                        <p>
                            Student Info
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <router-link :to="{path:'/register-student'}" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Register Student</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <a href="pages/forms/advanced.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Advanced Elements</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/forms/editors.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Editors</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-table"></i>
                        <p>
                            Class
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <router-link :to="{path:'/allocate-class-room'}" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Allocate Classroom</p>
                            </router-link>
                        </li>
                        <li class="nav-item">
                            <router-link :to="{path:'/view-class-schedule'}" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>View Class & Room</p>
                            </router-link>
                        </li>
                    </ul>
                </li>
                <li class="nav-header">EXAMPLES</li>
                <li class="nav-item">
                    <a href="pages/calendar.html" class="nav-link">
                        <i class="nav-icon fa fa-calendar"></i>
                        <p>
                            Calendar
                            <span class="badge badge-info right">2</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-envelope-o"></i>
                        <p>
                            Mailbox
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/mailbox/mailbox.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Inbox</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/mailbox/compose.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Compose</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/mailbox/read-mail.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Read</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-book"></i>
                        <p>
                            Pages
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/examples/invoice.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Invoice</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/profile.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Profile</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/login.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Login</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/register.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Register</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/lockscreen.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Lockscreen</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-plus-square-o"></i>
                        <p>
                            Extras
                            <i class="fa fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/examples/404.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Error 404</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/500.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Error 500</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/examples/blank.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Blank Page</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="starter.html" class="nav-link">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>Starter Page</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-header">MISCELLANEOUS</li>
                <li class="nav-item">
                    <a href="https://adminlte.io/docs" class="nav-link">
                        <i class="nav-icon fa fa-file"></i>
                        <p>Documentation</p>
                    </a>
                </li>
                <li class="nav-header">LABELS</li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-circle-o text-danger"></i>
                        <p class="text">Important</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-circle-o text-warning"></i>
                        <p>Warning</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-circle-o text-info"></i>
                        <p>Informational</p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>