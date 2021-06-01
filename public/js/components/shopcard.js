export default {
    name: 'shopcard',
    template: `
    <div class="page-shopping-cart" id="shopping-cart">
        <h4 class="cart-title">shop card</h4>
        <div class="cart-product-title clearfix">
            <div class="td-check fl"><span class="check-span fl check-all" :class="{'check-true':isSelectAll}"
                    @click="selectProduct(isSelectAll)"></span>check all</div>
            <div class="td-product fl">commodity </div>
            <div class="td-num fl">number</div>
            <div class="td-price fl"> price</div>
            <div class="td-total fl">money</div>
            <div class="td-do fl">operation</div>
        </div>
        <div class="cart-product clearfix">
            <table>
                <tbody>
                    <!--遍历的时候带上索引-->
                    <tr v-for="(item,index) in productList">
                        <td class="td-check"><span class="check-span" @click="item.select=!item.select"
                                :class="{'check-true':item.select}"></span></td>
                        <td class="td-product"><img :src="'public/images/'+item.product_image" width="98" height="98">
                            <div class="product-info">
                                <h6>name:{{item.product_name}}</h6>
                                <!--<p>info：{{item.product_info}}</p>-->
                            </div>
                            <div class="clearfix"></div>
                        </td>
                        <td class="td-num">
                            <div class="product-num">
                                <a href="javascript:;" class="num-reduce num-do fl"
                                    @click="reduce(index)"><span></span></a>
                                <input readonly type="number" class="num-input" v-model="item.number" >
                                <a href="javascript:;" class="num-add num-do fr"
                                    @click="add(index)"><span></span></a>
                            </div>
                        </td>
                        <td class="td-price">
                            <p class="red-text">￥<span class="price-text">{{item.product_price.toFixed(2)}}</span></p>
                        </td>
                        <td class="td-total">
                            <p class="red-text">￥<span class="total-text">{{item.product_price*item.number}}</span>.00</p>
                        </td>
                        <td class="td-do"><a href="javascript:;" class="product-delect"
                                @click="deleteOneProduct(index)">delete</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="cart-product-info">
            <a class="delect-product" href="javascript:;" @click="deleteProduct"><span></span>Delete the selected item</a>
            <a class="btn-buy fr" href="javascript:;">Buy</a>
            <p class="fr product-total">￥<span>{{getTotal.totalPrice}}</span></p>
            <p class="fr check-num"><span>{{getTotal.totalNum}}</span>Total items (excluding freight)：</p>
        </div>
    </div>
    `,

    data() {
        return {
            productList: [
                // {
                //     'pro_name': '【斯文】甘油 | 丙三醇',//产品名称
                //     'pro_brand': 'skc',//品牌名称
                //     'pro_place': '韩国',//产地
                //     'pro_purity': '99.7%',//规格
                //     'pro_min': "215千克",//最小起订量
                //     'pro_depot': '上海仓海仓储',//所在仓库
                //     'number': 3,//数量
                //     'pro_img': 'apple.jpg',//图片链接
                //     'product_price': 800,//单价
                // },
                // {
                //     'pro_name': '【斯文】甘油 | 丙三醇',//产品名称
                //     'pro_brand': 'skc',//品牌名称
                //     'pro_place': '韩国',//产地
                //     'pro_purity': '99.7%',//规格
                //     'pro_min': "215千克",//最小起订量
                //     'pro_depot': '上海仓海仓储',//所在仓库
                //     'number': 3,//数量
                //     'pro_img': 'apple.jpg',//图片链接
                //     'product_price': 800//单价
                // },
                // {
                //     'pro_name': '【斯文】甘油 | 丙三醇',//产品名称
                //     'pro_brand': 'skc',//品牌名称
                //     'pro_place': '韩国',//产地
                //     'pro_purity': '99.7%',//规格
                //     'pro_min': "215千克",//最小起订量
                //     'pro_depot': '上海仓海仓储',//所在仓库
                //     'number': 3,//数量
                //     'pro_img': 'apple.jpg',//图片链接
                //     'product_price': 800//单价
                // }
            ]
        }
    },
    created() {
        var localdata = localStorage.getItem('userdata');

        if (localdata == null) {
            this.productList = []
        } else {
            this.productList = JSON.parse(localdata)
        }
        console.log(this.productList);
    },
    computed: {
        //检测是否全选
        isSelectAll: function () {
            //如果productList中每一条数据的select都为true，返回true，否则返回false;
            return this.productList.every(function (val) { return val.select });
        },
        //获取总价和产品总件数
        getTotal: function () {
            //获取productList中select为true的数据。
            var _proList = this.productList.filter(function (val) { return val.select }), totalPrice = 0;
            for (var i = 0, len = _proList.length; i < len; i++) {
                //总价累加
                totalPrice += _proList[i].number * _proList[i].product_price;
            }
            //选择产品的件数就是_proList.length，总价就是totalPrice
            return { totalNum: _proList.length, totalPrice: totalPrice }
        }
    },
    methods: {
        /* 减少 */
        reduce(index) {
            this.productList[index].number > 1 ? this.productList[index].number-- : '';
            this.$options.methods.savedata(this.productList);
        },
        // 增加
        add(index) {
            console.log(index)
            this.productList[index].number++;
            this.$options.methods.savedata(this.productList);
        },
        //全选与取消全选
        selectProduct: function (_isSelect) {
            //遍历productList，全部取反
            for (var i = 0, len = this.productList.length; i < len; i++) {
                this.productList[i].select = !_isSelect;
            }
        },
        //删除已经选中(select=true)的产品
        deleteProduct: function () {
            this.productList = this.productList.filter(function (item) { return !item.select })
            this.$options.methods.savedata(this.productList);
        },
        //删除单条产品
        deleteOneProduct: function (index) {

            //根据索引删除productList的记录
            this.productList.splice(index, 1);
            this.$options.methods.savedata(productList);
        },
        savedata: function (productList) {
            localStorage.setItem('userdata', JSON.stringify(productList))
        }
    },
    mounted: function () {
        var _this = this;
        //为productList添加select（是否选中）字段，初始值为true。map可返回新数组
        this.productList.map(function (item) {
            _this.$set(item, 'select', true); //购物车的单选按钮，选中商品功能，接口里面没有字段，是监听不到的，通过$set设置一个不存在的变量，放在data里面 $set(obj, key, val), 也可以在数据库里增加字段处理
        })
    }
}
