import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'

Vue.use(VueRouter)

const routes: RouteConfig[] = [
  { path: '/', component: () => import('../views/Home.vue') },
  { path: '/labo', component: () => import('../views/Labo.vue') },
  { path: '/cafe', component: () => import('../views/Cafe.vue') },
  { path: '/company', component: () => import('../views/Company.vue') },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
