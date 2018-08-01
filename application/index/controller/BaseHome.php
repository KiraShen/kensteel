<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/13
 * Time: 16:20
 */
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;

class BaseHome extends Controller
{
   public function _initialize()
    {
        //导航菜单
        $nav_list=Db::name('cms_nav')
        ->where('status',1)
        ->field('id,title,url,status,controller_name')
        ->select();

        $nav_list_en=Db::name('cms_ma_nav')
        ->where('status',1)
        ->field('id,title,url,status,pid')
        ->select();
        // $link_list=Db::name('cms_link')->where('status',1)->select();//友情链接
        
        $web_icp=Db::name('system_config')
        ->where('name','web_site_icp')
        ->select();
        $web_email=Db::name('system_config')
        ->where('name','company_email')
        ->select();
        $web_address=Db::name('system_config')
        ->where('name','company_address')
        ->select();
        $web_company=Db::name('system_config')
        ->where('name','company_headquarters')
        ->select();
        $web_url=Db::name('system_config')
        ->where('name','company_url')
        ->select();
        // dump($nav_list_en);exit;
        
        $this->assign([
            'web_icp'=>$web_icp,
            'web_email'=>$web_email,
            'web_address'=>$web_address,
            'web_company'=>$web_company,
            'web_url'=>$web_url,
            'nav_list'=>$nav_list,
            'nav_list_en'=>$nav_list_en,
            // 'link_list'=>$link_list,
            'controller_name'=>Request::instance()->controller(),
            'action_name'=>Request::instance()->action()
        ]);
    }
}