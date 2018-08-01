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
        $type_list=[];//Db::name('cms_shares_cate')->where('status',1)->select(); 
        if (($agentid = session('iuser.id'))) {
            // $mode = $agentid = session('user.mode');
            // dump($mode);exit();
            $type_list= Db::name('cms_ma_refereetype')->where('status',1)->select(); 
            $referee_list= Db::name('cms_ma_referee')
                        ->where('status',1)
                        ->where('raid',session('iuser.id'))
                        ->where('rtid',11)
                        ->select(); 
            $this->assign([
                'login_status'=>1,
                'agent_name'=>session('iuser.agent_name'),
                'type_list'=>$type_list,
                'referee_list'=>$referee_list
            ]);       
            return $this->fetch();
        }else{
            $this->assign([
                'login_status'=>0,
                'type_list'=>$type_list
            ]);

            return $this->error('please login!','@index_en');
        }
    }

    public function info_post(Request $request){
    	// var $result = 0;
        $tid = $request->param('rtid');
        $rid = $request->param('rrid');
        $name = $request->param('rname');
        $email = $request->param('remail');
		$code = $request->param('rcode');
        $address = $request->param('raddress');
        $banknum = $request->param('rbanknum');
        $bankinfo =  $request->param('rbankinfo');
        $phone = $request->param('rphone');
        // $password = md5(substr($code, 12,6));
        $username = $this->usernameRand();
        $password = md5($username);
        $rrname = '';
        // $uuid = $this->uuidRand();
        // dump($uuid);exit();
        $user = Db::name('cms_ma_referee')
                ->where('rcode',$code)->field('id')->order('id', 'desc')->select();
        $user_num= Db::name('cms_ma_referee')
                        ->where('status',1)
                        ->where('raid',session('iuser.id'))
                        ->where('rtid',11)
                        ->select(); 

        $create_at = strtotime('now');
        // $create_time = date('Y-m-d H:i:s',$create_at);
         // dump($create_time);exit();
        $agentid = session('iuser.id');
        // $mode = session('user.mode');
		if(count($user)>0) {	 
            $this->error('He is already an agent! Please check what you have filled out!', '@group');    
		}else{
            if($tid == 11 && count($user_num) > 5){
                $this->error('first level agent is over!', '@group'); 
            }
            if($tid == 11){$rid = 0; $rrname = session('iuser.agent_name');}
        // dump($rid);exit();
            if($tid == 12 && $rid == 0) {$this->error('please choose superior.', '@group'); }
            if($tid == 12){
                $buf = Db::name('cms_ma_referee')
                        ->where('id',$rid)->field('rname')->select();
                $rrname = $buf[0]['rname'];
        // dump($buf[0]['rname']);exit();
            }
			echo "There is a new agent increase.";
			$user_result = Db::table('cms_ma_referee')
    			->insert(['rname' => $name, 
                          'rrname' => $rrname, 
    					  'remail' => $email,
    					  'rcode' => $code,
                          'rrid' => $rid,
                          'rtid' => $tid,
                          'raid' => $agentid,
    					  'raddress' => $address,
    					  'rbanknum' => $banknum,
    					  'rbankinfo' => $bankinfo,
    					  'rphone' => $phone,
                          'rusername' => $username,
    					  'rpassword' => $password,
    					  'create_at' => $create_at,
                          'rmode' => 0,
    					  'status' => 1]);
			// $pid = Db::table('cms_ma_user')->getLastInsID();
            if ($user_result !== false) {
                $this->success('Congratulations, increase success!', '@group');
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