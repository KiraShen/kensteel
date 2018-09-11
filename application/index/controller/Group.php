<?php


namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;
use think\Request;


class Group extends BaseHome {
    /**
     * 网站入口
     */
    public function index() {
    	//type
        $agent_type = session('iuser.rid');
        $agent_id = session('iuser.id');
            // dump($agent_type);exit();
        $type_list=[];//Db::name('cms_shares_cate')->where('status',1)->select(); 
        if (($agentid = session('iuser.id'))) {
            // $mode = $agentid = session('user.mode');
            // dump($mode);exit();
            $type_list= Db::name('cms_ma_refereetype')->where('status',1)->select(); 
            // dump($type_list);exit();
            if($agent_type == 11){
                $type_list= Db::name('cms_ma_refereetype')
                        ->where('status',1)
                        ->where('id',12)
                        ->select(); 
            }
            $referee_list= Db::name('cms_ma_agent')
                        ->where('status',1)
                        ->where('pid',session('iuser.id'))
                        ->where('rid',11)
                        ->select(); 
            $this->assign([
                'login_status'=>1,
                'agent_type'=>$agent_type,
                'agent_id'=>$agent_id,
                'agent_name'=>session('iuser.agent_name'),
                'type_list'=>$type_list,
                'referee_list'=>$referee_list
            ]);       
            return $this->fetch();
        }else{
            $this->assign([
                'login_status'=>0,
                'agent_id'=>$agent_id,
                'agent_type'=>$agent_type,
                'type_list'=>$type_list
            ]);

            return $this->error('please login!','@index_en');
        }
    }

    public function info_post(Request $request){
    	// var $result = 0;
        $rid = $request->param('rid');
        // dump($rid);exit();
        $pid = $request->param('pid');
        if($rid == 12){
        $pid = session('iuser.id');
        // dump($pid);exit();  
        }
        $agent_name = $request->param('agent_name');
        $email = $request->param('email');
		$code = $request->param('code');
        $address = $request->param('address');
        $bankaccount = $request->param('bankaccount');
        $bankname =  $request->param('bankname');
        $bankaddress =  $request->param('bankaddress');
        $phone = $request->param('phone');
        // $password = md5(substr($code, 12,6));
        $username = $this->usernameRand();
        $password = $username;
        // $uuid = $this->uuidRand();
        // dump($agent_name);exit();
        $user = Db::name('cms_ma_agent')
                ->where('code',$code)->field('id')->order('id', 'desc')->select();
        $user_num= Db::name('cms_ma_agent')
                        ->where('status',1)
                        ->where('pid',session('iuser.id'))
                        ->where('rid',11)
                        ->select(); 

        $create_at = strtotime('now');
        // $create_time = date('Y-m-d H:i:s',$create_at);
        $agentid = session('iuser.id');
        $agentpid = session('iuser.pid');
        $rname = session('iuser.agent_name');
         // dump($agentname);exit();
        // $mode = session('user.mode');
		if(count($user)>0) {	 
            $this->error('He is already an agent! Please check what you have filled out!', '@group');    
		}else{
            if($rid == 11 && count($user_num) > 5){
                $this->error('first level agent is over!', '@group'); 
            }
            if($rid == 11){$pid = $agentid;}
        // dump($rid);exit();
            if($rid == 12 && $pid == 0) {$this->error('please choose superior.', '@group'); }
            if($rid == 12){
                $buf0 = Db::name('cms_ma_agent')
                        ->where('id',$agentpid)->field('agent_name')->find();
                $rname =  $buf0['agent_name'];
                $buf = Db::name('cms_ma_agent')
                        ->where('id',$pid)->field('agent_name')->find();
                $rrname = $buf['agent_name'];
                $rname = $rname.'-'.$rrname;
                // dump($rname);exit();
            }
			echo "There is a new agent increase.";
			$user_result = Db::table('cms_ma_agent')
    			->insert(['agent_name' => $agent_name,
                          'r_name' => $rname, 
    					  'email' => $email,
    					  'code' => $code,
                          'pid' => $pid,
                          'rid' => $rid,
                          'abankaccount' => $bankaccount,
                          'abankname' => $bankname,
                          'abankaddress' => $bankaddress,
    					  'phone' => $phone,
                          'agentname' => $username,
    					  'password' => $password,
    					  'create_at' => $create_at,
                          'mode' => 0,
    					  'status' => 1]);
			// $pid = Db::table('cms_ma_user')->getLastInsID();
            if ($user_result !== false) {
                $this->success('Congratulations, increase success!', '@group_info');
            }else{
                $this->error('Information has failed to increase! Please check what you have filled out!', '@group');
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

}