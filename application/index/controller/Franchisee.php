<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Franchisee extends BaseHome {

    /**
     * 网站入口
     */
    public function index() {
    	//type
        $type_list=Db::name('cms_shares_cate')->where('status',1)->select(); 
        if (($agentid = session('user.id'))) {
            $this->assign([
                'login_status'=>1,
                'agent_name'=>session('user.agent_name'),
                'type_list'=>$type_list
            ]);       
            return $this->fetch();
        }else{
            $this->assign([
                'login_status'=>0,
                'type_list'=>$type_list
            ]);

            return $this->error('请登录!','@index');
        }
    }

    public function info_post(Request $request){
    	// var $result = 0;
        $tid = $request->param('tid');
        $first_name = $request->param('first_name');
        $last_name = $request->param('last_name');
		$code = $request->param('code');
        $address = $request->param('address');
        $banknum = $request->param('banknum');
        $bankinfo =  $request->param('bankinfo');
        $phone = $request->param('phone');
        $password = md5(substr($code, 12,6));
        //dump($password);
        $user = Db::name('cms_user')->where('code',$code)->field('id')->order('id', 'desc')->select();
        $create_at = strtotime('now');
        $create_time = date('Y-m-d H:i:s',$create_at);
         // dump($create_time);exit();
        $agentid = session('user.id');
		if(count($user)>0) {		 
			$pid = $user[0]['id'];
			$result = Db::table('cms_shares')
				->insert(['pid' => $pid,
						  'tid' => $tid,
                          'aid' => $agentid,
						  'status' => 2,
						  'create_at' => $create_at,
                          'create_time' => $create_time]);
			if ($result !== false) {
                $this->success('恭喜, 数据增加成功!', '@franchisee');
            }else{
                $this->error('信息增加失败!请检查你填写的内容！', '@franchisee');
            }
		}else{
			echo "有新的用户增加";
			$user_result = Db::table('cms_user')
    			->insert(['first_name' => $first_name, 
    					  'last_name' => $last_name,
    					  'code' => $code,
    					  'address' => $address,
    					  'banknum' => $banknum,
    					  'bankinfo' => $bankinfo,
    					  'phone' => $phone,
    					  'password' => $password,
    					  'create_at' => $create_at,
    					  'status' => 1]);
			$pid = Db::table('cms_user')->getLastInsID();
			if ($user_result !== false) {
				$result = Db::table('cms_shares')
				->insert(['pid' => $pid,
						  'tid' => $tid,
                          'aid' => $agentid,
						  'status' => 2,
						  'create_at' => $create_at,
                          'create_time' => $create_time]);
                if ($result !== false) {
                    $this->success('恭喜, 数据增加成功!', '@franchisee');
                }else{
                    $this->error('信息增加失败!请检查你填写的内容！', '@franchisee');
                }
            }else{
                $this->error('用户增加失败!请检查你填写的内容！', '@franchisee');
            }
        	
        }
    }

}