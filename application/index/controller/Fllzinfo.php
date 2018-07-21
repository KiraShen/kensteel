<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Fllzinfo extends BaseHome {

    /**
     * 网站入口
     */
    
        public $shares_table = 'cms_shares';
        public $user_table = 'cms_user';
        public $table = 'cms_shares_cate';
    public function index() {

    	if (($agentid = session('user.id'))) {
            $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_shares_cate'=>'type'],'shares.tid=type.id')
                    ->field('shares.*,
                        user.first_name,user.last_name,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money')
                    ->order('status asc')
                    ->order('create_time desc')
                    // ->where('shares.status',1)
                    ->where('aid',session('user.id'))->paginate(10);
            // dump($shares_list);exit();
            $page = $shares_list->render();
            $this->assign([
                'login_status'=>1,
                'agent_name'=>session('user.agent_name'),
                'shares_list'=>$shares_list,
                'page'=>$page,
                'total'=>$shares_list->count()
            ]);
            // dump($shares_list->count());exit();
            return $this->fetch();
        }else{
            $this->assign([
                'login_status'=>0
            ]);

            return $this->error('请登录!','@index');
        }

        
    }
}