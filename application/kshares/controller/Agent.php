<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/12
 * Time: 17:30
 */

namespace app\kshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
class Agent extends BasicAdmin
{
    public $agent_table = 'cms_agent';
    public $user_table = 'cms_user';
    
    public function index(){
        // 设置页面标题
        $this->title = '代理信息表';
        // 获取到所有GET参数
        $get = $this->request->get();
        
        // 实例Query对象
        $db = Db::name($this->agent_table)->where('mode',2);

        foreach ([ 'agent_name','person'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                // dump($get[$key]);exit();
                $db->where($key, 'like', "%{$get[$key]}%");
            }
        }

        // 实例化并显示
        return parent::_list($db);
    }

    public function add_agent(){
        return $this->_form('cms_agent', 'agent_form');
    }

    public function edit_agent(){
        return $this->_form('cms_agent', 'agent_form');
    }

    /**
     * 禁用
     */
    public function agent_forbid() {
        if (DataService::update($this->agent_table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function agent_resume() {
        if (DataService::update($this->agent_table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    // public function add_user(){
    //     return $this->_form('cms_user', 'user_form');
    // }

    public function edit_user(){
        return $this->_form('cms_user', 'user_form');
    }

    public function user(){
        // 设置页面标题
        $this->title = '用户信息表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->user_table);
        foreach ([ 'first_name','code'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                // dump($get[$key]);exit();
                $db->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // 实例化并显示
        return parent::_list($db);
    }
}