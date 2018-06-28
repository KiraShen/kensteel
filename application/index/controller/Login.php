<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Paginator;


class Login extends BaseHome {

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
        $user = Db::name('cms_agent')->where('agentname', $username)->where('status',1)->find();
        empty($user) && $this->error('登录账号不存在或禁用，请重新输入!');
        ($user['password'] !== $password) && $this->error('登录密码与账号不匹配，请重新输入!');
        Db::name('cms_agent')->where('id', $user['id'])->update(['login_at' => ['exp', 'now()'], 'login_num' => ['exp', 'login_num+1']]);
        session('user', $user);
        // !empty($user['authorize']) && NodeService::applyAuthNode();
        // LogService::write('系统管理', '用户登录系统成功');
        // dump($userid = session('user.agent_name'));exit();
        $this->success('登录成功，正在进入系统...', '@index');
    }

    public function logout() {
        session('user', null);
        session_destroy();
        $this->success('退出登录成功！', '@index');
    }
}