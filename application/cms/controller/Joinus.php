<?php
/**
 * Created by PhpStorm.
 * User: kirashen
 * Date: 2017/7/12
 * Time: 10:38
 */

namespace app\cms\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
class Joinus extends BasicAdmin
{
    public $dbt_joinus = 'cms_joinus';

    public function index(){
        // 设置页面标题
        $this->title = '招聘信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->dbt_joinus);
        // 实例化并显示
        return parent::_list($db);
    }

    public function add(){
        return $this->_form($this->dbt_joinus, 'form');
    }

    public function edit(){
        return $this->_form($this->dbt_joinus, 'form');
    }


    /**
     * 禁用
     */
    public function forbid() {
        if (DataService::update($this->dbt_joinus)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function resume() {
        if (DataService::update($this->dbt_joinus)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    public function del(){
        if (DataService::update($this->dbt_joinus)) {
            $this->success("案例删除成功！", '');
        }
        $this->error("案例删除失败，请稍候再试！");
    }

}