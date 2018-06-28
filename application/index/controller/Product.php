<?php
/**
 * Created by PhpStorm.
 * User: kirashen
 * Date: 2017/7/12
 * Time: 11:14
 */

namespace app\index\controller;

use think\Db;
class Product extends BaseHome
{
    public function index(){
        // $cate_list=Db::name('cms_product_cate')->where('status',1)->select();
        
        $info_list=Db::name('cms_product')->where('status',1)->select();
        // dump($info_list);
        // exit();
        $this->assign([
            //'cate_list'=>$cate_list,
            'info_list'=>$info_list
        ]);
        return $this->fetch();


        $about_list=Db::name('cms_about')->where('status',1)->order('create_at desc')->select();//关于我们
        $case_list=Db::name('cms_case')->where('status',1)->select();//案例列表
        $css_array=array('fadeInLeft','fadeInUp','fadeInUp','fadeInRight');
        $service_list=array();
        $process_list=array();//流程列表
        $i=0;
        $j=0;
        foreach($about_list as $k=>$v) {
            if ($v['type'] == 1) {
                if($i < 4){
                    $service_list[$k]['title'] = $v['title'];
                    $service_list[$k]['icon'] = $v['icon'];

                    $service_list[$k]['description'] = explode(",", $v['description']);
                    array_filter($service_list[$k]['description']);
                    foreach ($service_list[$k]['description'] as $key => $val) {
                        $service_list[$k]['description'][$key] = trim($val);
                    }
                    $service_list[$k]['css']=$css_array[$i];
                    $i++;
                }

            }

            if($v['type'] == 6){
                $process_list[$k]['title'] = $v['title'];
                $process_list[$k]['icon'] = $v['icon'];

                $process_list[$k]['description'] =  $v['description'];
                $process_list[$k]['time']=0.1*$j;
                $j++;
            }
        }
        $this->assign([
          'service_list'=>$service_list,
            'process_list'=>$process_list,
            'case_list'=>$case_list
        ]);
        return $this->fetch();
    }
}