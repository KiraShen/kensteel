<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/20
 * Time: 17:30
 */

namespace app\kshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
class Account extends BasicAdmin
{
    public $shares_table = 'cms_shares';
    public $user_table = 'cms_user';
    
    public function index(){
        // 设置页面标题
        $this->title = '财务记录表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->shares_table);

        //文本轮播列表
        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_shares_cate'=>'type'],'shares.tid=type.id')
                    ->join(['cms_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.first_name,user.last_name,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money,
                        agent.agent_name,agent.person')
                    ->order('create_at desc')
                    ->where('shares.status=2')
                    ->where('shares.mode=2')
                    ->where('shares.remark','')
                    ->paginate(10);
        // $page = $shares_list->render();
        $page = preg_replace(['|href="(.*?)"|', '|pagination|'], ['data-open="$1" href="javascript:void(0);"', 'pagination pull-right'], $shares_list->render());
        // dump($page);exit();
        // 实例化并显示
        // return parent::_list($db);
        !empty($this->title) && $this->assign('title', $this->title);
        $this->assign([
           'list'=>$shares_list,
           'page'=>$page
        ]);
        // dump($shares_list);exit();
        return $this->fetch();
    }

    public function edit_account(){
        $record = session('user');
        $nowtime = strtotime('now');
        $update_time = date('Y-m-d H:i:s',time());
        $this->assign([
           'recordname'=>$record['username'],
           'nowtime'=>$nowtime,
           'update_time'=>$update_time
        ]);
        return $this->_form('cms_shares', 'form');
    }
}