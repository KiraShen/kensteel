<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Holdercn extends BaseHome {
    /**
     * 网站入口
     */
    public function index() {
    	//type
        $type_list=[];//Db::name('cms_shares_cate')->where('status',1)->select(); 
        if (($agentid = session('iuser.id'))) {
            // $mode = $agentid = session('user.mode');
            $type_list= Db::name('cms_ma_holdertype')->where('status',1)->select(); 
            $first_list= Db::name('cms_ma_agent')
                    ->where('status',1)
                    ->where('pid',session('iuser.id'))
                    ->select(); 
            $second_id = array_column($first_list, 'id');
            $second_list = array();
            foreach ($second_id as $key => $value) {
                $second_list[$key] = Db::name('cms_ma_agent')
                                ->where('status',1)
                                ->where('pid',$second_id[$key])
                                ->select();
            }
            $this->assign([
                'login_status'=>1,
                'agent_name'=>session('iuser.agent_name'),
                'type_list'=>$type_list,
                'agent_id'=>session('iuser.id'),
                'first_list'=>$first_list,
                'second_list'=>$second_list
            ]);       
            return $this->fetch();
        }else{
            $this->assign([
                'login_status'=>0,
                'type_list'=>$type_list
            ]);

            return $this->error('please login!','@index_cn');
        }
    }

    public function info_post(Request $request){
    	// var $result = 0;
        $tid = $request->param('tid');
        $rid = $request->param('rid');
        $name = $request->param('name');
        $email = $request->param('email');
		$code = $request->param('code');
        $address = $request->param('address');
        $bankaccount = $request->param('bankaccount');
        $bankname =  $request->param('bankname');
        $bankaddress =  $request->param('bankaddress');
        $phone = $request->param('phone');
        // $password = md5(substr($code, 12,6));
        $username = $this->usernameRand();
        $password = md5($username);
        $uuid = $this->uuidRand();
        // dump($name);exit();
        $user = Db::name('cms_ma_user')->where('code',$code)->field('id')->order('id', 'desc')->select();
        $create_at = strtotime('now');
        $create_time = date('Y-m-d',$create_at);
         // dump($create_time);exit();
        $agentid = session('iuser.id');
        // $mode = session('user.mode');
		if(count($user)>0) {	 
			$pid = $user[0]['id'];
			$result = Db::table('cms_ma_shares')
				->insert(['pid' => $pid,
						  'tid' => $tid,
                          'rid' => $rid,
                          'aid' => $agentid,
						  'status' => 3,
                          'mode' => 0,
                          'uuid' => $uuid,
						  'create_at' => $create_at,
                          'create_time' => $create_time]);
			if ($result !== false) {
                $this->success('Congratulations, increase success!', '@holder_infocn');
            }else{
                $this->error('Information has failed to increase! Please check what you have filled out!', '@holdercn');
            }
		}else{
			echo "There is a new user increase.";
			$user_result = Db::table('cms_ma_user')
    			->insert(['name' => $name, 
    					  'email' => $email,
    					  'code' => $code,
    					  'address' => $address,
    					  'bankaccount' => $bankaccount,
    					  'bankname' => $bankname,
                          'bankaddress' => $bankaddress,
    					  'phone' => $phone,
                          'username' => $username,
    					  'password' => $password,
    					  'create_at' => $create_at,
                          'mode' => 0,
    					  'status' => 1]);
			$pid = Db::table('cms_ma_user')->getLastInsID();
			if ($user_result !== false) {
				$result = Db::table('cms_ma_shares')
				->insert(['pid' => $pid,
						  'tid' => $tid,
                          'rid' => $rid,
                          'aid' => $agentid,
						  'status' => 3,
                          'mode' => 0,
                          'uuid' => $uuid,
						  'create_at' => $create_at,
                          'create_time' => $create_time]);
                if ($result !== false) {
                    $this->success('Congratulations, increase success!', '@holder_infocn');
                }else{
                    $this->error('Information has failed to increase! Please check what you have filled out!', '@holdercn');
                }
            }else{
                $this->error('Information has failed to increase! Please check what you have filled out!', '@holdercn');
            }
        	
        }
    }

    function usernameRand(){
        if(PHP_VERSION < '4.2.0'){
            srand();
        }
        $randArr = array();
        for($i = 0; $i < 3; $i++){
            $randArr[$i] = chr(rand(0, 25) + 97);
            $randArr[$i + 3] = chr(rand(0, 25) + 97);
        }
        shuffle($randArr);
        return implode('', $randArr);
    }

    function uuidRand(){
        if(PHP_VERSION < '4.2.0'){
            srand();
        }
        $randArr = array();
        for($i = 0; $i < 4; $i++){
            $randArr[$i] = chr(rand(0, 25) + 65);
            $randArr[$i + 4] = chr(rand(0, 25) + 65);
            $randArr[$i + 8] = chr(rand(0, 25) + 65);
            $randArr[$i + 12] = chr(rand(0, 25) + 65);
        }
        shuffle($randArr);
        return implode('', $randArr);
    }

    public function info(){
        echo "string";
    }


}