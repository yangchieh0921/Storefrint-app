import Index from "./index.js";
import Product from "./product.js";
import Detail from "./detail.js";
import Shopcard from "./shopcard.js";


let router = new VueRouter({
  // mode: 'history',
  routes: [
    { path: '/', redirect: { name: "index" } },
    { path: '/index', name: 'index', component: Index },
    { path: '/product/:type', name: 'product', component: Product },
    { path: '/detail/:id', name: 'detail', component: Detail },
    { path: '/shopcard', name: 'shopcard', component: Shopcard }
    // { path: '/register', name: 'register', component: SignUp },
    // { path: '/choose', name: 'choose', component: Choose },
    // { path: '/welcome', name: 'welcome', component: WelCome },
    // { path: '/list', name: 'list', component: List },
    // { path: '/kids', name: 'kids', component: Kids },
    // { path: '/detail', name: 'detail', component: Detail }
  ]
});

// const VueRouterPush = router.prototype.push
// router.prototype.push = function push(to) {
//   return VueRouterPush.call(this, to).catch(err => err)
// }

export default router