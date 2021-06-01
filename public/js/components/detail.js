export default {
    name: 'detail',
    template: `
    <div class="small-container" >
    <div  v-for="(item,i) in list" :key="i">
        <h2 class="title-2"> {{item.product_name}}</h2>
        <div class="row">
            <div class="product-detail-image">
            <img  class="detail-image" :src="'public/images/'+item.product_image" alt="drill-1">
            </div>
            <div class="detail-info">
                <p>{{item.product_info}}</p>
            </div>
            <div>
                <video width="1000" height="550"controls>
                    <source :src="'public/videos/'+item.product_video">
                </video>

            </div>
        </div>
        </div>
    </div>
    `,

    data() {
        return {
            list: []
        }
    },
    created() {
        fetch('/api/products', {
            method: 'GET',
            headers: {
                "Content-Type": "application/json",
            },
            // body: JSON.stringify({}),
        })
            .then(res => res.json())
            .then(result => {
                var index = this.$route.params.id;
                console.log(index)
                var data = result.data.filter((ele) => {
                    return ele.product_id == index
                })
                console.log(data)
                this.list = data;
            })
            .catch(function (error) {
                console.log(error);
            });

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
