<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/15
 * Time: 9:01
 */

namespace app\index\controller;

use think\Db;
class Aboutus extends BaseHome
{
    public function index(){
        $type=input('type','','int');
        $Nowpage = input('get.page') ? input('get.page'):1;
        if(!empty($type)){
            $where['cate_id']=$type;
        }
        $where['status']=1;
        $cate_list=Db::name('cms_aboutus_cate')->where('status',1)->select();
        foreach($cate_list as $k=>$v){
            $cate_list[$k]['url']=url('/case-'.$v['id']);
        }
        // dump($cate_list);exit();
        $limits = 6;// 获取总条数
        $start = $limits * ($Nowpage - 1);
        $case_list=Db::name('cms_aboutus_doc')->where($where)->limit($start,$limits)->select();
        foreach($case_list as $k=>$v){
            $case_list[$k]['url']=url('/news-'.$v['id']);
        }

        // dump($case_list);exit();
        $count=Db::name('cms_aboutus_doc')->where($where)->count();
        $allpage = ceil($count / $limits);
        $this->assign([
           'cate_list'=>$cate_list,
           'allpage'=>$allpage,
            'type'=>$type,
            'case_list'=>$case_list
        ]);
        return $this->fetch();
    }
}