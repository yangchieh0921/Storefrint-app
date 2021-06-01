export default {
    name: 'product',
    template: `
    <div class="small-container">
        <h2 class="title-2" v-if="this.$route.params.type=='lawn'">Lawn Mower Products</h2>
        <h2 class="title-2" v-if="this.$route.params.type=='saw'">Saw Products</h2>
        <h2 class="title-2" v-if="this.$route.params.type=='drill'">Drill Products</h2>
        <div class="row" v-if="this.$route.params.type=='lawn'">
            <div class="col-4" v-for="(item,i) in list" :key="i">
                <router-link :to="'/detail/'+item.product_id" href="lawn-mower-1.html">
                <img :src="'public/images/'+item.product_image" alt="lawn-mower-1">
                </router-link>
                <h4>{{item.product_name}}</h4>
                <p>{{item.product_price}}</p>
                <button class="btn"  @click='adddata(item.product_id)'>ADD TO CART</button>
            </div>
        </div>
        <div class="row" v-if="this.$route.params.type=='saw'">
            <div class="col-4" v-for="(item,i) in list2" :key="i">
                <router-link :to="'/detail/'+item.product_id" href="lawn-mower-1.html">
                <img :src="'public/images/'+item.product_image" alt="lawn-mower-1">
                </router-link>
                <h4>{{item.product_name}}</h4>
                <p>{{item.product_price}}</p>
                <button class="btn" @click='adddata(item.product_id)'>ADD TO CART</button>
            </div>
        </div>
        <div class="row" v-if="this.$route.params.type=='drill'">
            <div class="col-4" v-for="(item,i) in list3" :key="i">
                <router-link :to="'/detail/'+item.product_id" href="lawn-mower-1.html">
                <img :src="'public/images/'+item.product_image" alt="lawn-mower-1">
                </router-link>
                <h4>{{item.product_name}}</h4>
                <p>{{item.product_price}}</p>
                <button class="btn"  @click='adddata(item.product_id)'>ADD TO CART</button>
            </div>
        </div>
    </div>
    `,

    data() {
        return {
            mainlist: [],
            type: '',
            list: [],
            list2: [],
            list3: [],
        }
    },
    created() {
        // this.$emit('authenticated', true, {
        //   pageName: 'login'
        // })

    },
    mounted() {
        this.type = this.$route.params.type;
        this.dom(this.$route.params.type)
        console.log(this.$route.params.type)
    },
    methods: {
        dom() {
            return fetch('/api/products', {
                method: 'GET',
                headers: {
                    "Content-Type": "application/json",
                },
                // body: JSON.stringify({}),
            })
                .then(res => res.json())
                .then(result => {
                    this.mainlist = result.data;
                    var data = result.data.filter((ele) => {
                        return ele.product_image.indexOf('lawn') != -1
                    })
                    var data2 = result.data.filter((ele) => {
                        return ele.product_image.indexOf('saw') != -1
                    })
                    var data3 = result.data.filter((ele) => {
                        return ele.product_image.indexOf('drill') != -1
                    })
                    console.log(data)
                    this.list = data;
                    this.list2 = data2;
                    this.list3 = data3;
                })
                .catch(function (error) {
                    console.log(error);
                });
        },
        /* 加入购物车 */
        adddata(uid) {
            console.log(uid)
            var localdata = localStorage.getItem('userdata');
            if (localdata == null) {
                localdata = []
            } else {
                localdata = JSON.parse(localdata);
            }

            var result = this.mainlist.filter((ele) => {
                return ele.product_id == uid
            })
            /* 索引值 */
            var aimdata = localdata.findIndex((ele) => {
                return ele.product_id == uid
            });
            console.log(aimdata);
            if (aimdata != -1) {
                localdata[aimdata].number = localdata[aimdata].number * 1 + 1;
            } else {
                var aim = result;
                aim[0].product_price = result[0].product_price.split('$')[1] * 1
                aim[0].number = 1;
                localdata.push(...aim);

            }
            localStorage.setItem('userdata', JSON.stringify(localdata));
            console.log('success')
        }
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
