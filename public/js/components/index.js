export default {
    name: 'signin',
    template: `
        <section class="categories-section">
            <div class="title">
                <h1>Three Categories</h1>
            </div>
            <div class="categories">
                <div class="row">
                    <div calss="col-3">
                        <img class="categories-1" src="public/images/lawn-mover.jpg" alt="categories-1">
                        <router-link to="/product/lawn">
                            <h2 class="categories-name">Lawn Mover</h2>
                        </router-link>
                    </div>
                    <div calss="col-3">
                        <img class="categories-2" src="public/images/saw.jpg" alt="categories-2">
                        <router-link to="/product/saw" >
                            <h2 class="categories-name">Saw</h2>
                        </router-link>
                    </div>
                    <div class="col-3">
                        <img class="categories-3" src="public/images/drill.jpg" alt="categories-3">
                        <router-link to="/product/drill" >
                            <h2 class="categories-name">Drill</h2>
                        </router-link>
                    </div>
                </div>
            </div>
        </section>
    `,

    data() {
        return {
            logins: {
                email: "",
                password: ""
            },
            formMsg: ""
        }
    },
    created() {
        // this.$emit('authenticated', true, {
        //   pageName: 'login'
        // })

    },
    methods: {
        // toRegister() {
        //     this.$router.push({ path: "/register" });
        // },
        // signin() {
        //     fetch('/login', {
        //         method: 'POST',
        //         headers: {
        //             "Content-Type": "application/json",
        //         },
        //         body: JSON.stringify(this.logins),
        //     })
        //         .then(res => res.json())
        //         .then(result => {
        //         })
        //         .catch(function (error) {
        //             console.log(error);
        //         });
        // }
    }
}
