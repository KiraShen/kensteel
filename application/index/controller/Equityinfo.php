<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Equityinfo extends BaseHome {
	public function index(){
		$agentid = session('iuser.id');
	    // dump($agentid);exit();
		if($agentid) {
			$list= Db::name('cms_ma_equity')
							->alias('shares')
                    		->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    		->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    		->field('shares.*,
			                        user.name,user.email,user.phone,
			                        user.bankinfo,user.banknum,user.code,user.address,
			                        type.type_name,type.shares,type.money_usd')
	                        ->where('shares.status',1)
	                        ->where('aid',session('iuser.id'))
	                        // ->where('rtid',11)
	                        ->select(); 

	        // dump($list);exit();
			$this->assign([
	            'login_status'=>1,
	            'agent_name'=>session('iuser.agent_name'),
	            // 'type_list'=>$type_list,
	            'list'=>$list
	        ]); 
	        return $this->fetch();
		}else{
			$this->assign([
	                'login_status'=>0,
	                // 'type_list'=>$type_list
	            ]);

	        return $this->error('please login!','@index_en');
		}

	}

}