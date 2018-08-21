<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/12
 * Time: 17:30
 */

namespace app\mshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
class Member extends BasicAdmin
{
    public $agent_table = 'cms_ma_agent';
    public $user_table = 'cms_user';
    public $referee_table = 'cms_ma_referee';
    
    public function agent(){
        // 设置页面标题
        $this->title = 'AGENT INFOMATION';
        // 获取到所有GET参数
        $get = $this->request->get();
        
        // 实例Query对象
        $db = Db::name($this->agent_table)->where('rid',10);

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
        return $this->_form('cms_ma_agent', 'agent_form');
    }

    public function edit_agent(){
        return $this->_form('cms_ma_agent', 'agent_form');
    }

    /**
     * 禁用
     */
    public function agent_forbid() {
        if (DataService::update($this->agent_table)) {
            $this->success("forbid successful！", '');
        }
        $this->error("forbid defeat，please check it！");
    }

    /**
     * 禁用
     */
    public function agent_resume() {
        if (DataService::update($this->agent_table)) {
            $this->success("resume successful！", '');
        }
        $this->error("resume defeat，please check it！");
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

    public function referee(){
        // 设置页面标题
        $this->title = 'REFEREE INFOMATION';
        // 获取到所有GET参数
        $get = $this->request->get();
        
        // 实例Query对象
        // $db = Db::name($this->referee_table);

        $db=Db::name($this->referee_table)
                    ->alias('referee')
                    ->join(['cms_ma_refereetype'=>'type'],'referee.rtid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'referee.raid=agent.id')
                    ->field('referee.*,
                        type.grade,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('agent_name desc')
                    ->order('grade asc')
                    ->where('referee.status',1)
                    ->where('referee.rmode',0);

        // $db = Db::name($this->agent_table)->where('rid',11);
               // dump($db);exit();
        foreach ([ 'rrname','rname'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                // dump($get[$key]);exit();
                $db->where($key, 'like', "%{$get[$key]}%");
            }
        }

        // 实例化并显示
        return parent::_list($db);
    }

        /**
     * 禁用
     */
    public function referee_forbid() {
        if (DataService::update($this->referee_table)) {
            $this->success("forbid successful！", '');
        }
        $this->error("forbid defeat，please check it！");
    }

    /**
     * 禁用
     */
    public function referee_resume() {
        if (DataService::update($this->referee_table)) {
            $this->success("resume successful！", '');
        }
        $this->error("resume defeat，please check it！");
    }
}