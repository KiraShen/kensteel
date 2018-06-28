<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/11
 * Time: 10:48
 */

namespace app\cms\controller;
use service\DataService;

use controller\BasicAdmin;
use think\Db;
class Shuff extends BasicAdmin
{
    public $table = 'cms_shuff';

    public function index(){
        // 设置页面标题
        $this->title = '前台轮播设置';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db);
    }

    public function add(){
        return $this->_form($this->table, 'form');
    }

    public function edit(){
        return $this->_form($this->table, 'form');
    }

    /**
     * 轮播图禁用
     */
    public function forbid() {
        if (DataService::update($this->table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 轮播图禁用
     */
    public function resume() {
        if (DataService::update($this->table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }
}