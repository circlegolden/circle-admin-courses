import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from "@/views/Login";
import Admin from "@/views/Admin";
import Table_tea from "@/components/Table_tea";
import Table_stu from "@/components/Table_stu";
import CoursesView from "@/views/CoursesView";
import Table_courses from "@/components/Table_courses";
import Table_open from "@/components/Table_open";
import Table_del from "@/components/Table_del";
import change_pwd from "@/components/change_pwd";
import Table_grade from "@/components/Table_grade";
import Table_data from "@/components/Table_data";

Vue.use(VueRouter)

const routes = [
  // {
  //   path: '/',
  //   name: 'login',
  //   component: Login
  // },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/',
    name: 'login',
    component: Login
  },

  {
    path: '/CoursesView',
    name: 'CoursesView',
    component: CoursesView
  },
  {
    path: '/Admin',
    name: 'Admin',
    component: Admin,
    redirect: '/Table_tea',
    children: [
      {
        path: '/Table_tea',
        name: 'Table_tea',
        component: Table_tea
      },
      {
        path: '/Table_stu',
        name: 'Table_stu',
        component: Table_stu
      },
      {
        path: '/Table_courses',
        name: 'Table_courses',
        component: Table_courses
      },
      {
        path: '/Table_open',
        name: 'Table_open',
        component: Table_open
      },
      {
        path: '/Table_del',
        name: 'Table_del',
        component: Table_del
      },
      {
        path: '/change_pwd',
        name: 'change_pwd',
        component: change_pwd
      },
      {
        path: '/Table_grade',
        name: 'Table_grade',
        component: Table_grade
      },
      {
        path: '/Table_data',
        name: 'Table_data',
        component: Table_data
      }
    ]
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
