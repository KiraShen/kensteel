<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */

namespace app\cms\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
class About extends BasicAdmin
{
    public $table = 'cms_about';
    public function index(){
        // 设置页面标题
        $this->title = '关于我们';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db);
    }
    public function add(){
        $cate_list=Db::name('cms_type')->select();
        $this->assign('catelist',$cate_list);
        return $this->_form($this->table, 'form');
    }

    public function edit(){
        $cate_list=Db::name('cms_type')->select();
        $this->assign('catelist',$cate_list);
        return $this->_form($this->table, 'form');
    }
    public function del(){
        if (DataService::update($this->table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }
}