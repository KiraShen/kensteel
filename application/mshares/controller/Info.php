<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/12
 * Time: 16:32
 */

namespace app\mshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use think\Request;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
class Info extends BasicAdmin
{   
    public $shares_table = 'cms_ma_shares';
    public $equity_table = 'cms_ma_equity';
    public $user_table = 'cms_ma_user';
    public $agent_table = 'cms_ma_agent';
    public $holder_type = 'cms_ma_holdertype';
    public $equity_type = 'cms_ma_equitytype';

    public function hverify(){
        // 设置页面标题
        $this->title = 'SHARE HOLDER INFOMATION VERIFY';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->shares_table);

        // $shang_list=Db::name($this->shares_table)
        //             ->alias('shares')
        //             ->join(['cms_ma_agent'=>'agent'],'shares.rid=agent.id')
        //             ->field('shares.id,agent.agent_name')
        //             ->order('id desc')
        //             ->where('shares.status',2)
        //             ->select();             
        // dump($shang_list);exit();
        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'r'],'shares.rid=r.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.id,shares.create_time,shares.update_time,shares.status,shares.remark,
                        user.name,user.code,
                        type.type_name,
                        agent.agent_name,
                        r.r_name')
                    ->order('id desc')
                    ->where('shares.status',3)
                    ->paginate(10);
        // $shares_list = & $s;
        // foreach ($shares_list as $key => &$value) {
        //     dump($shares_list[$key]['shangji']=1);
        // }
        // dump($shares_list);exit();
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
    public function show_htype(){
        $info = input();
        // dump($info);exit();
        $info_id = $info['id'];
        $htype_list = Db::name($this->holder_type)->select();
        // dump($htype_list);exit();
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // dump($data);exit();

            $nowtime = strtotime('now');
            $update_time = date('Y-m-d H:i:s',time());
            $result = Db::name($this->shares_table)
                        ->where('id',$info_id)
                        ->update(['tid' => $data["type"],
                                  'update_at' => $nowtime,
                                  'update_time' => $update_time]);
        
            if ($result !== false) {
                $this->success('验证成功!', '');
            }else{
                $this->error('验证失败, 请稍候再试!');
            }
        
        }
        return $this->fetch('show_htype',['vo' => $htype_list,'id' => $info_id]);
    }

    public function show_holder(){
        $info = input();
        $info_id = $info['id'];
        $info_list = Db::name($this->shares_table)->where('id',$info_id)->find();
        $agent_list = Db::name($this->agent_table)->where('id',$info_list['aid'])->find();
        $user_list = Db::name($this->user_table)->where('id',$info_list['pid'])->find();
        $type_list = Db::name($this->holder_type)->where('id',$info_list['tid'])->find();
        $info_all = array_merge($type_list,$agent_list);
        $info_all = array_merge($info_all,$user_list);
        $info_all = array_merge($info_all,$info_list);
        if($info_all['status'] == 3){
            $info_all['status'] = 2;
        }
        $record = session('user');
        $nowtime = strtotime('now');
        $update_time = date('Y-m-d H:i:s',time());
        // dump($info_all);exit();
         // dump(session('user'));exit();
         // POST请求, 数据自动存库
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // dump($data);exit();

            $result = Db::name($this->shares_table)
                        ->where('id',$data['id'])
                        ->update(['status' => $data['status'],
                                  'infomark' => $data['infomark'].$record['username'].'@'.$update_time.':validate|',
                                  'update_at' => $nowtime,
                                  'update_time' => $update_time]);
        
            if ($result !== false) {
                $this->success('验证成功!', '');
            }else{
                $this->error('验证失败, 请稍候再试!');
            }
        
        }
        return $this->fetch('holder_form',['vo' => $info_all]);
    }

    public function everify(){
        // 设置页面标题
        $this->title = 'PRIVATE EQUITY INFOMATION VERIFY';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->equity_table);

        $shares_list=Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'r'],'shares.rid=r.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.id,shares.create_time,shares.update_time,shares.status,shares.remark,
                        user.name,user.code,
                        type.type_name,
                        agent.agent_name,
                        r.r_name,r.agent_name')
                    ->order('id desc')
                    ->where('shares.status',3)
                    ->paginate(10);
        // $page = $shares_list->render();
        // dump($shares_list);exit();
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

    public function show_etype(){
        $info = input();
        // dump($info);exit();
        $info_id = $info['id'];
        $htype_list = Db::name($this->equity_type)->select();
        // dump($htype_list);exit();
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // dump($data);exit();

            $nowtime = strtotime('now');
            $update_time = date('Y-m-d H:i:s',time());
            $result = Db::name($this->equity_table)
                        ->where('id',$info_id)
                        ->update(['tid' => $data["type"],
                                  'update_at' => $nowtime,
                                  'update_time' => $update_time]);
        
            if ($result !== false) {
                $this->success('验证成功!', '');
            }else{
                $this->error('验证失败, 请稍候再试!');
            }
        
        }
        return $this->fetch('show_etype',['vo' => $htype_list,'id' => $info_id]);
    }

    public function show_equity(){
        $info = input();
        $info_id = $info['id'];
        $info_list = Db::name($this->equity_table)->where('id',$info_id)->find();
        $agent_list = Db::name($this->agent_table)->where('id',$info_list['aid'])->find();
        $user_list = Db::name($this->user_table)->where('id',$info_list['pid'])->find();
        $type_list = Db::name($this->equity_type)->where('id',$info_list['tid'])->find();
        $info_all = array_merge($type_list,$agent_list);
        $info_all = array_merge($info_all,$user_list);
        $info_all = array_merge($info_all,$info_list);
        if($info_all['status'] == 3){
            $info_all['status'] = 2;
        }
        $record = session('user');
        $nowtime = strtotime('now');
        $update_time = date('Y-m-d H:i:s',time());
        // dump($info_all);exit();
         // dump(session('user'));exit();
         // POST请求, 数据自动存库
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // dump($data);exit();

            $result = Db::name($this->equity_table)
                        ->where('id',$data['id'])
                        ->update(['status' => $data['status'],
                                  'infomark' => $data['infomark'].$record['username'].'@'.$update_time.':validate|',
                                  'update_at' => $nowtime,
                                  'first_at' => strtotime(date("Y-m-d"))+7*24*60*60,
                                  'update_time' => $update_time]);
        
            if ($result !== false) {
                $this->success('验证成功!', '');
            }else{
                $this->error('验证失败, 请稍候再试!');
            }
        
        }
        return $this->fetch('equity_form',['vo' => $info_all]);
    }

    public function stype(){
        // 设置页面标题
        $this->title = 'SHARE HOLDER TYPES';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->holder_type);
        // 实例化并显示
        return parent::_list($db);
    }
    public function edit_stype(){
        return $this->_form('cms_ma_holdertype', 'stype_form');
    }

    public function add_stype(){
        return $this->_form('cms_ma_holdertype', 'stype_form');
    }

    public function sforbid() {
        if (DataService::update($this->holder_type)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    public function sresume() {
        if (DataService::update($this->holder_type)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    public function ptype(){
        // 设置页面标题
        $this->title = 'PRIVATE EQUITY TYPES';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->equity_type);
        // 实例化并显示
        return parent::_list($db);
    }

    public function edit_ptype(){
        return $this->_form('cms_ma_equitytype', 'ptype_form');
    }

    public function add_ptype(){
        return $this->_form('cms_ma_equitytype', 'ptype_form');
    }

    public function pforbid() {
        if (DataService::update($this->equity_type)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    public function presume() {
        if (DataService::update($this->equity_type)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }
    

    public function out(){
        // $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);//文件名称
        $fileName = date('_YmdHis');//or $xlsTitle 文件名称可根据自己情况设定
        //导出
        $path = dirname(__FILE__); //找到当前脚本所在路径
        vendor("PHPExcel.PHPExcel.PHPExcel");
        vendor("PHPExcel.PHPExcel.Writer.IWriter");
        vendor("PHPExcel.PHPExcel.Writer.Abstract");
        vendor("PHPExcel.PHPExcel.Writer.Excel5");
        vendor("PHPExcel.PHPExcel.Writer.Excel2007");
        vendor("PHPExcel.PHPExcel.IOFactory");
        $objPHPExcel = new \PHPExcel();
        $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);


        // 实例化完了之后就先把数据库里面的数据查出来
        $sql = Db::name('cms_shares_cate')->where('mode',2)->where('status',1)->select();
        // var_dump($sql);

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','ID')
        ->setCellValue('B1', '分类名称')
        ->setCellValue('C1', '套餐金额')
        ->setCellValue('D1', '股票数量');

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $sql[$i-2]['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $sql[$i-2]['type_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $sql[$i-2]['money']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['shares']);
        }

        
        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('sheet');      //设置sheet的名称
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        // $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   
        //通过PHPExcel_IOFactory的写函数将上面数据写出来
        
        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel5");
            
        header("Content-Disposition: attachment;filename=$fileName.xls");
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        
        // header('Content-Type: application/vnd.ms-excel');//告诉浏览器将要输出excel03文件
        // header('Cache-Control: max-age=0');//禁止缓存
        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }
  //   public function exportExcel($expTitle,$expCellName,$expTableData){
  //   $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);//文件名称
  //   $fileName = $_SESSION['account'].date('_YmdHis');//or $xlsTitle 文件名称可根据自己情况设定
  //   $cellNum = count($expCellName);
  //   $dataNum = count($expTableData);
  //   vendor("PHPExcel.PHPExcel");
     
  //   $objPHPExcel = new PHPExcel();
  //   $cellName = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
     
  //   $objPHPExcel->getActiveSheet(0)->mergeCells('A1:'.$cellName[$cellNum-1].'1');//合并单元格
  //   // $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', $expTitle.' Export time:'.date('Y-m-d H:i:s')); 
  //   for($i=0;$i<$cellNum;$i++){
  //     $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i].'2', $expCellName[$i][1]); 
  //   } 
  //    // Miscellaneous glyphs, UTF-8  
  //   for($i=0;$i<$dataNum;$i++){
  //    for($j=0;$j<$cellNum;$j++){
  //     $objPHPExcel->getActiveSheet(0)->setCellValue($cellName[$j].($i+3), $expTableData[$i][$expCellName[$j][0]]);
  //    }       
  //   } 
     
  //   header('pragma:public');
  //   header('Content-type:application/vnd.ms-excel;charset=utf-8;name="'.$xlsTitle.'.xls"');
  //   header("Content-Disposition:attachment;filename=$fileName.xls");//attachment新窗口打印inline本窗口打印
  //   $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5'); 
  //   $objWriter->save('php://output'); 
  //   exit;  
  // }
    // public function add(){

    //     return $this->_form($this->table, 'form');
    // }

    // public function edit(){
    //     return $this->_form($this->table, 'form');
    // }
    // public function del(){
    //     if (DataService::update($this->table)){
    //         $this->success("类型删除成功！", '');
    //     }
    //     $this->error("类型删除失败，请稍候再试！");
    // }
}