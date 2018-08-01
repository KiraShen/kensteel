<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Groupinfo extends BaseHome {
	public function index(){
		$agentid = session('iuser.id');
	    // dump($agentid);exit();
		if($agentid) {
			$referee_list= Db::name('cms_ma_referee')
	                        ->where('status',1)
	                        ->where('raid',session('iuser.id'))
	                        // ->where('rtid',11)
	                        ->select(); 

	        // dump($referee_list);exit();
			$this->assign([
	            'login_status'=>1,
	            'agent_name'=>session('iuser.agent_name'),
	            // 'type_list'=>$type_list,
	            'referee_list'=>$referee_list
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