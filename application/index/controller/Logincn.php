<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;


class Logincn extends BaseHome {

    /**
     * 网站入口
     */


    public function index() {
    	
        return $this->fetch();
    }

    public function login(){

        $username = $this->request->post('username', '', 'trim');
        $password = $this->request->post('password', '', 'trim');
        // (empty($username) || strlen($username) < 4) && $this->error('登录账号长度不能少于4位有效字符!');
        // (empty($password) || strlen($password) < 4) && $this->error('登录密码长度不能少于4位有效字符!');
        $user = Db::name('cms_ma_agent')->where('agentname', $username)->where('status',1)->find();
        empty($user) && $this->error('Login account does not exist or disable, please reenter it!');

        ($user['password'] !== $password) && $this->error('The login password does not match the account number. Please reenter it!',"@logincn",'1');

        Db::name('cms_ma_agent')->where('id', $user['id'])->update(['login_at' => ['exp', 'now()'], 'login_num' => ['exp', 'login_num+1']]);
        session('iuser', $user);
        // !empty($user['authorize']) && NodeService::applyAuthNode();
        // LogService::write('系统管理', '用户登录系统成功');
        // dump($userid = session('user.agent_name'));exit();
        $this->success('successful,login...', '@index_cn','1');
    }

    public function logout() {
        session('iuser', null);
        session_destroy();
        $this->success('logout success！', '@index_cn','1');
    }
}