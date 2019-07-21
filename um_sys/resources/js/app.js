
require('./bootstrap');

//window.Vue = require('vue');
import Vue from 'vue'
import router from './router/index'
import store from './store/index'
import { Form, HasError, AlertError } from 'vform'

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
import CKEditor from '@ckeditor/ckeditor5-vue';

Vue.use( CKEditor );
import VeeValidate from 'vee-validate';

Vue.use(VeeValidate);

import Vuetify from 'vuetify'

Vue.use(Vuetify)
//Vue.component('example-component', require('./components/ExampleComponent.vue').default);


const app = new Vue({
    el: '#app',
    router,
    store
});
