<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/11
 * Time: 11:14
 */

namespace app\cms\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
class Link extends BasicAdmin
{
    public $table = 'cms_link';
    /*
     * 友情链接列表
     */
    public function index(){
        // 设置页面标题
        $this->title = '友情链接列表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db, false);
    }

    /**
     * 添加友情链接
     */
    public function add() {
     
        return $this->_form($this->table, 'form');
    }

    /**
     * 编辑友情链接
     */
    public function edit() {
      
        return $this->_form($this->table, 'form');
    }

    /**
     * 友情链接禁用
     */
    public function forbid() {
        if (DataService::update($this->table)) {
            $this->success("菜单禁用成功！", '');
        }
        $this->error("菜单禁用失败，请稍候再试！");
    }

    /**
     * 友情链接禁用
     */
    public function resume() {
        if (DataService::update($this->table)) {
            $this->success("菜单启用成功！", '');
        }
        $this->error("菜单启用失败，请稍候再试！");
    }
}