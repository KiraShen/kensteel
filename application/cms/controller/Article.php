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
class Article extends BasicAdmin
{
    public $table = 'cms_article';

    public function index(){
        // 设置页面标题
        $this->title = '文章列表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db);
    }

    public function add(){
        $cate_list=Db::name('cms_article_cate')->select();
        $this->assign('catelist',$cate_list);
        return $this->_form($this->table, 'form');
    }

    public function edit(){
        $cate_list=Db::name('cms_article_cate')->select();
        $this->assign('catelist',$cate_list);

        return $this->_form($this->table, 'form');
    }


    /**
     * 禁用
     */
    public function forbid() {
        if (DataService::update($this->table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function resume() {
        if (DataService::update($this->table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    public function del(){
        if (DataService::update($this->table)) {
            $this->success("案例删除成功！", '');
        }
        $this->error("案例删除失败，请稍候再试！");
    }

    public function index_cate(){
        // 设置页面标题
        $this->title = '分类列表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name('cms_article_cate');
        // 实例化并显示
        return parent::_list($db);
    }
    public function add_cate(){

        return $this->_form('cms_article_cate', 'cate_form');
    }

    public function edit_cate(){
        return $this->_form('cms_article_cate', 'cate_form');
    }
    public function del_cate(){
        $this->table='cms_article_cate';
        if (DataService::update($this->table)){
            $this->success("分类删除成功！", '');
        }
        $this->error("分类删除失败，请稍候再试！");
    }
}