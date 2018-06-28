<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/15
 * Time: 9:40
 */

namespace app\index\controller;

use think\Db;
class About extends BaseHome
{
    public function index(){
        $about_list=Db::name('cms_about')->where('status',1)->select();//关于我们
        $pintai_list=array();
        $advantage_list=array();
        foreach($about_list as $k=>$v) {
            if ($v['type'] == 8) {
                $pintai_list[$k]['title'] = $v['title'];
                $pintai_list[$k]['description'] = $v['description'];
            }
            if($v['type'] == 7){
                $advantage_list[$k]['title']=$v['title'];
                $advantage_list[$k]['icon']=$v['icon'];
                $advantage_list[$k]['description']=$v['description'];
            }
        }
        $this->assign([
           'pintai_list'=>$pintai_list,
            'advantage_list'=>$advantage_list
        ]);
        return $this->fetch();
    }
}