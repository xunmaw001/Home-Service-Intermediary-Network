
var projectName = '家政服务中介网';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '家政公司',
	url: './pages/jiazhenggongsi/list.html'
}, 
{
	name: '家政服务',
	url: './pages/jiazhengfuwu/list.html'
}, 

{
	name: '网站公告',
	url: './pages/news/list.html'
},
{
	name: '留言反馈',
	url: './pages/messages/list.html'
}
]

var adminurl =  "http://localhost:8080/ssmilafa/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","用户资金账户"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","查看评论","家政公司账户"],"menu":"家政公司","menuJump":"列表","tableName":"jiazhenggongsi"}],"menu":"家政公司管理"},{"child":[{"buttons":["查看","修改","删除","入账","扣减"],"menu":"用户资金账户","menuJump":"列表","tableName":"yonghuzijinzhanghu"}],"menu":"用户资金账户管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"用户资金扣减","menuJump":"列表","tableName":"yonghuzijinkoujian"}],"menu":"用户资金扣减管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"用户资金入账","menuJump":"列表","tableName":"yonghuzijinruzhang"}],"menu":"用户资金入账管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"家政公司充值","menuJump":"列表","tableName":"jiazhenggongsichongzhi"}],"menu":"家政公司充值管理"},{"child":[{"buttons":["查看","修改","删除","扣减","入账"],"menu":"家政公司账户","menuJump":"列表","tableName":"jiazhenggongsizhanghu"}],"menu":"家政公司账户管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"家政公司资金扣减","menuJump":"列表","tableName":"jiazhenggongsizijinkoujian"}],"menu":"家政公司资金扣减管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"家政公司资金入账","menuJump":"列表","tableName":"jiazhenggongsizijinruzhang"}],"menu":"家政公司资金入账管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"用户充值","menuJump":"列表","tableName":"yonghuchongzhi"}],"menu":"用户充值管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"服务分类","menuJump":"列表","tableName":"fuwufenlei"}],"menu":"服务分类管理"},{"child":[{"buttons":["查看","修改","删除","审核","报表","查看评论"],"menu":"家政服务","menuJump":"列表","tableName":"jiazhengfuwu"}],"menu":"家政服务管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"服务订单","menuJump":"列表","tableName":"fuwudingdan"}],"menu":"服务订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"互动交流","menuJump":"列表","tableName":"hudongjiaoliu"}],"menu":"互动交流管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"订单状态申请","menuJump":"列表","tableName":"dingdanzhuangtaishenqing"}],"menu":"订单状态申请管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"网站公告","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"家政公司列表","menuJump":"列表","tableName":"jiazhenggongsi"}],"menu":"家政公司模块"},{"child":[{"buttons":["查看","接单"],"menu":"家政服务列表","menuJump":"列表","tableName":"jiazhengfuwu"}],"menu":"家政服务模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"用户资金账户","menuJump":"列表","tableName":"yonghuzijinzhanghu"}],"menu":"用户资金账户管理"},{"child":[{"buttons":["查看"],"menu":"用户资金扣减","menuJump":"列表","tableName":"yonghuzijinkoujian"}],"menu":"用户资金扣减管理"},{"child":[{"buttons":["查看"],"menu":"用户资金入账","menuJump":"列表","tableName":"yonghuzijinruzhang"}],"menu":"用户资金入账管理"},{"child":[{"buttons":["新增","查看","支付"],"menu":"用户充值","menuJump":"列表","tableName":"yonghuchongzhi"}],"menu":"用户充值管理"},{"child":[{"buttons":["查看","修改","删除","查看评论","新增"],"menu":"家政服务","menuJump":"列表","tableName":"jiazhengfuwu"}],"menu":"家政服务管理"},{"child":[{"buttons":["查看","修改","删除","订单状态申请","审核"],"menu":"服务订单","menuJump":"列表","tableName":"fuwudingdan"}],"menu":"服务订单管理"},{"child":[{"buttons":["新增","查看","删除"],"menu":"互动交流","menuJump":"列表","tableName":"hudongjiaoliu"}],"menu":"互动交流管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"订单状态申请","menuJump":"列表","tableName":"dingdanzhuangtaishenqing"}],"menu":"订单状态申请管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"家政公司列表","menuJump":"列表","tableName":"jiazhenggongsi"}],"menu":"家政公司模块"},{"child":[{"buttons":["查看","接单"],"menu":"家政服务列表","menuJump":"列表","tableName":"jiazhengfuwu"}],"menu":"家政服务模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","支付"],"menu":"家政公司充值","menuJump":"列表","tableName":"jiazhenggongsichongzhi"}],"menu":"家政公司充值管理"},{"child":[{"buttons":["查看"],"menu":"家政公司账户","menuJump":"列表","tableName":"jiazhenggongsizhanghu"}],"menu":"家政公司账户管理"},{"child":[{"buttons":["查看"],"menu":"家政公司资金扣减","menuJump":"列表","tableName":"jiazhenggongsizijinkoujian"}],"menu":"家政公司资金扣减管理"},{"child":[{"buttons":["查看"],"menu":"家政公司资金入账","menuJump":"列表","tableName":"jiazhenggongsizijinruzhang"}],"menu":"家政公司资金入账管理"},{"child":[{"buttons":["查看","删除","订单状态申请"],"menu":"服务订单","menuJump":"列表","tableName":"fuwudingdan"}],"menu":"服务订单管理"},{"child":[{"buttons":["新增","查看","删除"],"menu":"互动交流","menuJump":"列表","tableName":"hudongjiaoliu"}],"menu":"互动交流管理"},{"child":[{"buttons":["查看","删除","修改"],"menu":"订单状态申请","menuJump":"列表","tableName":"dingdanzhuangtaishenqing"}],"menu":"订单状态申请管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"家政公司列表","menuJump":"列表","tableName":"jiazhenggongsi"}],"menu":"家政公司模块"},{"child":[{"buttons":["查看","接单"],"menu":"家政服务列表","menuJump":"列表","tableName":"jiazhengfuwu"}],"menu":"家政服务模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"家政公司","tableName":"jiazhenggongsi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
