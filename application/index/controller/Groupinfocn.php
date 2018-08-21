<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Groupinfocn extends BaseHome {
	public function index(){
		$agentid = session('iuser.id');
	    // dump($agentid);exit();
		if($agentid) {
			$referee_list= Db::name('cms_ma_referee')
	                        ->where('status',1)
	                        ->where('raid',session('iuser.id'))
	                        // ->where('rtid',11)
	                        ->select(); 
	        $first_list = Db::name('cms_ma_agent')
	        				->where('status',1)
	        				->where('pid',session('iuser.id'))
	        				->select();
	        $second_id = array_column($first_list, 'id');
	        $count = count($second_id);
	        foreach ($second_id as $key => $value) {
	        	$second_list[$key] = Db::name('cms_ma_agent')
	        					->where('status',1)
	        					->where('pid',$second_id[$key])
	        					->select();
	        }
	        // dump($second_list);exit();
			$this->assign([
	            'login_status'=>1,
	            'agent_name'=>session('iuser.agent_name'),
	            // 'type_list'=>$type_list,
	            'referee_list'=>$referee_list,
	            'first_list'=>$first_list,
	            'second_list'=>$second_list
	        ]); 
	        return $this->fetch();
		}else{
			$this->assign([
	                'login_status'=>0,
	                // 'type_list'=>$type_list
	            ]);

	        return $this->error('please login!','@index_cn');
		}

	}

}