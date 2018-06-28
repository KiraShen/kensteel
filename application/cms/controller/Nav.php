<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/9
 * Time: 17:51
 */

namespace app\cms\controller;
use service\DataService;
use service\ToolsService;
use controller\BasicAdmin;
use think\Db;
class Nav extends BasicAdmin
{
    public $table = 'cms_nav';
    /*
     * 导航列表
     */
    public function index(){
        // 设置页面标题
        $this->title = '前台导航设置';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db, false);
    }
    /**
     * 列表数据处理
     * @param array $data
     */
    protected function _index_data_filter(&$data) {
        foreach ($data as &$vo) {

            $vo['ids'] = join(',', ToolsService::getArrSubIds($data, $vo['id']));
        }
        $data = ToolsService::arr2table($data);
    }
    /**
     * 添加导航菜单
     */
    public function add() {
        $_menus = Db::name($this->table)->where('status', '1')->order('sort desc,id desc')->select();
        $_menus[] = ['title' => '顶级导航', 'id' => '0', 'pid' => '-1'];
        $menus = ToolsService::arr2table($_menus);


        $this->assign('menus', $menus);
        return $this->_form($this->table, 'form');
    }

    /**
     * 编辑导航菜单
     */
    public function edit() {
        $_menus = Db::name($this->table)->where('status', '1')->order('sort desc,id desc')->select();
        $_menus[] = ['title' => '顶级导航', 'id' => '0', 'pid' => '-1'];
        $menus = ToolsService::arr2table($_menus);


        $this->assign('menus', $menus);
        return $this->_form($this->table, 'form');
    }
    /**
     * 导航菜单禁用
     */
    public function forbid() {
        if (DataService::update($this->table)) {
            $this->success("菜单禁用成功！", '');
        }
        $this->error("菜单禁用失败，请稍候再试！");
    }

    /**
     * 导航菜单禁用
     */
    public function resume() {
        if (DataService::update($this->table)) {
            $this->success("菜单启用成功！", '');
        }
        $this->error("菜单启用失败，请稍候再试！");
    }
    public function del(){
        if (DataService::update($this->table)) {
            $this->success("导航删除成功！", '');
        }
        $this->error("导航删除失败，请稍候再试！");
    }

}