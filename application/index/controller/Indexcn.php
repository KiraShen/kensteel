<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;

class Indexcn extends BaseHome {

    /**
     * 网站入口
     */


    public function index() {

        if (($agentid = session('iuser.id'))) {
            $this->assign([
                'login_status'=>1,
                'agent_name'=>session('iuser.agent_name')
            ]);
        }else{
            $this->assign([
                'login_status'=>0
            ]);
        }
        return $this->fetch();


        //文本轮播列表
        $text_shuff_list=Db::name('cms_shuff')->where('status',1)->where('type','text')->select(); 

        // dump($text_shuff_list);exit;
        $about_list=Db::name('cms_about')->where('status',1)->select();//关于我们

        $features_list=array();//特性列表
        $service_list=array();//服务列表
        $advantage_list=array();//优势列表
        $dynamic_list=array();//动态列表
        $consult_list=array();//咨询列表
        $help_list=array();//帮助列表
        $partners_list=array();//合作伙伴

        $product_list=array();
        $new_list=Db::name('cms_article')->where('status',1)->order(' create_at desc ')->select();//文章列表
        foreach($new_list as $k=>$v){
            if($v['cate_id'] == 1){
                $dynamic_list[$k]['title']=$v['title'];
                $dynamic_list[$k]['image']=$v['image'];
                $dynamic_list[$k]['brief']=$v['brief'];
                $dynamic_list[$k]['url']=$v['url'];
                $dynamic_list[$k]['content']=$v['content'];
                $dynamic_list[$k]['create_at']=$v['create_at'];
                $dynamic_list[$k]['update_at']=$v['update_at'];
                $dynamic_list[$k]['url']=url('/news-'.$v['id']);
            }
            if($v['cate_id'] == 2){
                $consult_list[$k]['title']=$v['title'];
                $consult_list[$k]['image']=$v['image'];
                $consult_list[$k]['brief']=$v['brief'];
                $consult_list[$k]['url']=$v['url'];
                $consult_list[$k]['content']=$v['content'];
                $consult_list[$k]['create_at']=$v['create_at'];
                $consult_list[$k]['update_at']=$v['update_at'];
                $consult_list[$k]['url']=url('/news-'.$v['id']);
            }
            if($v['cate_id'] == 3){
                $help_list[$k]['title']=$v['title'];
                $help_list[$k]['image']=$v['image'];
                $help_list[$k]['brief']=$v['brief'];
                $help_list[$k]['url']=$v['url'];
                $help_list[$k]['content']=$v['content'];
                $help_list[$k]['create_at']=$v['create_at'];
                $help_list[$k]['update_at']=$v['update_at'];
                $help_list[$k]['url']=url('/news-'.$v['id']);
            }
        }
        $j=1;
        $i=0;
        foreach($about_list as $k=>$v){
            if($v['type'] == 3){
                $features_list[$k]['title']=$v['title'];
                $features_list[$k]['icon']=$v['icon'];
                $features_list[$k]['description']=$v['description'];
            }
            if($v['type'] == 4){
                $service_list[$k]['title']=$v['title'];
                $service_list[$k]['icon']=$v['icon'];

                $service_list[$k]['description']=explode(",",$v['description']);
                array_filter($service_list[$k]['description']);
                foreach($service_list[$k]['description'] as $key=>$val){
                    $service_list[$k]['description'][$key]=trim($val);
                }

            }
            if($v['type'] == 2){
                $advantage_list[$k]['title']=$v['title'];
                $advantage_list[$k]['icon']=$v['icon'];
                $advantage_list[$k]['description']=$v['description'];

            }
            if($v['type'] == 1){
                if($i < 6){
                    $product_list[$k]['title']=$v['title'];
                    $product_list[$k]['icon']=$v['icon'];
                    $product_list[$k]['description']=$v['description'];
                    $i++;
                }

            }
            if($v['type']  == 5){
                $partners_list[$k]['title']=$v['title'];
                $partners_list[$k]['icon']=$v['icon'];
                $partners_list[$k]['time']=0.2*$j;
                $j++;
            }
        }
        $this->assign([
           'text_shuff_list'=>$text_shuff_list,
           'features_list'=>$features_list,
           'service_list'  => $service_list,
            'advantage_list'=>$advantage_list,
            'product_list'=>$product_list,
            'dynamic_list'=>$dynamic_list,
            'consult_list'=>$consult_list,
            'help_list'=>$help_list,
            'partners_list'=>$partners_list
        ]);
      //  var_dump($service_list);exit();
      //  
        
    }

}
