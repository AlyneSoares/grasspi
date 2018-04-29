import Vue from 'vue'
import Router from 'vue-router'
import Garden from '@/components/view/garden/Garden'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Garden',
      component: Garden
    }
  ]
})
