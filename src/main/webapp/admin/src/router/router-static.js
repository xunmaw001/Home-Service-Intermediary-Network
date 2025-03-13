import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import fuwudingdan from '@/views/modules/fuwudingdan/list'
    import jiazhenggongsichongzhi from '@/views/modules/jiazhenggongsichongzhi/list'
    import yonghuchongzhi from '@/views/modules/yonghuchongzhi/list'
    import dingdanzhuangtaishenqing from '@/views/modules/dingdanzhuangtaishenqing/list'
    import storeup from '@/views/modules/storeup/list'
    import yonghuzijinzhanghu from '@/views/modules/yonghuzijinzhanghu/list'
    import jiazhenggongsi from '@/views/modules/jiazhenggongsi/list'
    import jiazhenggongsizijinruzhang from '@/views/modules/jiazhenggongsizijinruzhang/list'
    import fuwufenlei from '@/views/modules/fuwufenlei/list'
    import jiazhenggongsizijinkoujian from '@/views/modules/jiazhenggongsizijinkoujian/list'
    import jiazhenggongsizhanghu from '@/views/modules/jiazhenggongsizhanghu/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yonghuzijinruzhang from '@/views/modules/yonghuzijinruzhang/list'
    import discussjiazhengfuwu from '@/views/modules/discussjiazhengfuwu/list'
    import jiazhengfuwu from '@/views/modules/jiazhengfuwu/list'
    import messages from '@/views/modules/messages/list'
    import yonghuzijinkoujian from '@/views/modules/yonghuzijinkoujian/list'
    import hudongjiaoliu from '@/views/modules/hudongjiaoliu/list'
    import config from '@/views/modules/config/list'
    import discussjiazhenggongsi from '@/views/modules/discussjiazhenggongsi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '网站公告',
        component: news
      }
          ,{
	path: '/fuwudingdan',
        name: '服务订单',
        component: fuwudingdan
      }
          ,{
	path: '/jiazhenggongsichongzhi',
        name: '家政公司充值',
        component: jiazhenggongsichongzhi
      }
          ,{
	path: '/yonghuchongzhi',
        name: '用户充值',
        component: yonghuchongzhi
      }
          ,{
	path: '/dingdanzhuangtaishenqing',
        name: '订单状态申请',
        component: dingdanzhuangtaishenqing
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/yonghuzijinzhanghu',
        name: '用户资金账户',
        component: yonghuzijinzhanghu
      }
          ,{
	path: '/jiazhenggongsi',
        name: '家政公司',
        component: jiazhenggongsi
      }
          ,{
	path: '/jiazhenggongsizijinruzhang',
        name: '家政公司资金入账',
        component: jiazhenggongsizijinruzhang
      }
          ,{
	path: '/fuwufenlei',
        name: '服务分类',
        component: fuwufenlei
      }
          ,{
	path: '/jiazhenggongsizijinkoujian',
        name: '家政公司资金扣减',
        component: jiazhenggongsizijinkoujian
      }
          ,{
	path: '/jiazhenggongsizhanghu',
        name: '家政公司账户',
        component: jiazhenggongsizhanghu
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/yonghuzijinruzhang',
        name: '用户资金入账',
        component: yonghuzijinruzhang
      }
          ,{
	path: '/discussjiazhengfuwu',
        name: '家政服务评论',
        component: discussjiazhengfuwu
      }
          ,{
	path: '/jiazhengfuwu',
        name: '家政服务',
        component: jiazhengfuwu
      }
          ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
          ,{
	path: '/yonghuzijinkoujian',
        name: '用户资金扣减',
        component: yonghuzijinkoujian
      }
          ,{
	path: '/hudongjiaoliu',
        name: '互动交流',
        component: hudongjiaoliu
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/discussjiazhenggongsi',
        name: '家政公司评论',
        component: discussjiazhenggongsi
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
