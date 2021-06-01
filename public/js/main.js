
import router from './components/Router.js';

(() => {

    const vm = new Vue({
        data: {
        },

        created: function () {

        },
        methods: {
            goto(page) {

                if (this.$route.path !== page) {
                    this.$router.push({ path: page });
                }

            }
        },
        router
    }).$mount('#app');

})();
