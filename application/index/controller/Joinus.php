<?php
/**
 * Created by PhpStorm.
 * User: kirashen
 * Date: 2017/6/15
 * Time: 9:41
 */

namespace app\index\controller;

use think\Db;
class Joinus extends BaseHome
{
    public function index(){
        
        $info_list=Db::name('cms_joinus')->where('status',1)->select();
        // dump($info_list);
        // exit();
        $this->assign([
            //'cate_list'=>$cate_list,
            'info_list'=>$info_list
        ]);
        return $this->fetch();
    }
}
