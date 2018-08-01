<?php

/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */
use think\Route;
/*  测试环境禁止操作路由绑定 */
/*think\Route::post([
    'admin/config/index' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁修改系统配置操作！']);
    },
    'admin/config/file' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁修改文件配置操作！']);
    },
    'admin/menu/add' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁添加菜单操作！']);
    },
    'admin/menu/edit' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁编辑菜单操作！']);
    },
    'admin/menu/forbid' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止禁用菜单操作！']);
    },
    'admin/menu/del' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止删除菜单操作！']);
    },
    'wechat/config/index' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信配置操作！']);
    },
    'wechat/config/pay' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信支付操作！']);
    },
    'wechat/menu/edit' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信菜单操作！']);
    }
]);
think\Route::get([
    'wechat/menu/cancel' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止删除微信菜单操作！']);
    }
]);*/
Route::rule('jonnycms','admin/login/index');//登录页面
Route::rule('ajonnycms','admin/login/');//登录页面
Route::rule('service','index/services/index');//产品与服务
Route::rule('news','index/article/index');//新闻资讯
Route::rule('cases','index/cases/index');//新闻资讯
Route::rule('about','index/about/index');//关于我们
Route::rule('contact','index/contact/index');//联系我们

Route::rule('aboutus','index/aboutus/index');//关于我们
Route::get('news-<id>','index/article/details',[],['id'=>'\d+']);//新闻详情

Route::get('cate-<type>','index/article/index',[],['type'=>'\d+']);//文章列表

Route::get('case-<type>','index/cases/index',[],['type'=>'\d+']);//案例



Route::rule('login','index/login/index');
Route::rule('loginen','index/loginen/index');
Route::rule('login_post','index/login/login');
Route::rule('login_posten','index/loginen/login');
Route::rule('logout','index/login/logout');
Route::rule('logouten','index/loginen/logout');
Route::rule('index_en','index/indexen/index');
Route::rule('franchisee','index/franchisee/index');
Route::rule('holder','index/holder/index');
Route::rule('equity','index/equity/index');
Route::rule('info_post','index/franchisee/info_post');
Route::rule('holder_post','index/holder/info_post');
Route::rule('equity_post','index/equity/info_post');
Route::rule('fllzinfo','index/fllzinfo/index');
Route::rule('holder_info','index/holderinfo/index');
Route::rule('equity_info','index/equityinfo/index');
Route::rule('group','index/group/index');
Route::rule('group_info','index/groupinfo/index');
Route::rule('referee_post','index/group/info_post');
Route::rule('logout','index/login/logout');
Route::rule('joinus','index/joinus/index');//加入我们
Route::rule('news','index/article/index');//新闻资讯
Route::rule('product','index/product/index');//产品服务
Route::rule('aboutus','index/aboutus/index');//关于我们