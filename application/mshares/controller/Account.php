<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/20
 * Time: 17:30
 */

namespace app\mshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use think\Request;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
class Account extends BasicAdmin
{
    public $shares_table = 'cms_ma_shares';
    public $equity_table = 'cms_ma_equity';
    public $user_table = 'cms_ma_user';
    public $agent_table = 'cms_ma_agent';
    public $referee_table = 'cms_ma_referee';
    public $holder_type = 'cms_ma_holdertype';
    public $equity_type = 'cms_ma_equitytype';
    
    public function holder(){
        // 设置页面标题
        $this->title = 'SHARE HOLDER AUDIT ACCOUNT';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->shares_table);

        //文本轮播列表
        // $agent = Db::name($this->shares_table)
        //             ->alias('shares')
        //             ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
        //             ->field('shares.id,agent.agent_name')
        //             ->order('id desc')
        //             ->where('shares.status=2')
        //             ->where('shares.mode=0')
        //             ->where('shares.remark','')
        //             ->select();
                   // dump($agent);exit();
        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.status,shares.create_time,shares.id,shares.rid,
                        user.name,user.code,
                        type.type_name,type.money_usd,
                        agent.agent_name')
                    ->order('id desc')
                    ->where('shares.status=2')
                    ->where('shares.mode=0')
                    ->where('shares.remark','')//->select();
                    ->paginate(10);
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

    public function check_holder(){
        $record = session('user');
        $nowtime = strtotime('now');
        $update_time = date('Y-m-d H:i:s',time());
        $this->assign([
           'recordname'=>$record['username'],
           'nowtime'=>$nowtime,
           'update_time'=>$update_time
        ]);
        return $this->_form('cms_ma_shares', 'holder_form');
    }

        public function equity(){
        // 设置页面标题
        $this->title = 'PRIVATE EQUITY AUDIT ACCOUNT';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->equity_table);

        //文本轮播列表
        $shares_list=Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.status,shares.create_time,shares.id,shares.rid,
                        user.name,user.code,
                        type.type_name,type.money_usd,
                        agent.agent_name')
                    ->order('id desc')
                    ->where('shares.status=2')
                    ->where('shares.mode=0')
                    ->where('shares.remark','')//->select();
                    ->paginate(10);
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

    public function check_equity(){
        $record = session('user');
        $nowtime = strtotime('now');
        $update_time = date('Y-m-d H:i:s',time());
        $this->assign([
           'recordname'=>$record['username'],
           'nowtime'=>$nowtime,
           'update_time'=>$update_time
        ]);
        return $this->_form('cms_ma_equity', 'equity_form');
    }

    public function rebate(){
        // $b = "2016-6-19";
        // $b = strtotime($b)+7*24*60*60;
        // $c = ceil(strtotime(date("Y-m-d")) - $b)/86400;
        // $c= strtotime(date("Y-m-d"))+7*24*60*60;
        // dump($c);exit();
        // // 设置页面标题
        $nowtime = date("Y-m-d");
        $this->title = 'MONTHLY REPAYMENT PLAN';//'NOW TIME:'.$nowtime;
        // 获取到所有GET参数
        $get = $this->request->get();
        $shares_list=Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,type.roe,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('shares.update_time desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0)
                    ->select();
           // dump($shares_list);exit();
           if(is_array($shares_list)){
                foreach($shares_list as $v=>$value){
                    $interval = floor(ceil(strtotime($nowtime)-$value['first_at'])/86400/30);
                    $count = $value['count']+1;
                    $shares_list[$v]['count'] = $count;
                    $shares_list[$v]['money_usd'] = $shares_list[$v]['money_usd']*$shares_list[$v]['roe'];
                    $shares_list[$v]['update_time'] = substr($shares_list[$v]['update_time'] , 0 ,10);
                    if($interval!=$count){
                        unset($shares_list[$v]);
                    }
                }
            } 
        // dump($shares_list);
        // exit();
        
        !empty($this->title) && $this->assign('title', $this->title);
        $this->assign([
           'list'=>$shares_list,

           // 'page'=>$page
        ]);
        return $this->fetch();

    }

    public function pay() {
        if (DataService::update($this->equity_table)) {
            $this->success("Confirmation of payment!", '');
        }
        $this->error("Confirm the failure and try again later!");      
    }


    public function out(){

        $nowtime = date("Y-m-d");
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
        $shares_list = Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,type.roe,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('shares.update_time desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0)
                    ->select();
           // dump($shares_list);exit();
           if(is_array($shares_list)){
                foreach($shares_list as $v=>$value){
                    $interval = floor(ceil(strtotime($nowtime)-$value['first_at'])/86400/30);
                    $count = $value['count']+1;
                    $shares_list[$v]['count'] = $count;
                    $shares_list[$v]['money_usd'] = $shares_list[$v]['money_usd']*$shares_list[$v]['roe'];
                    $shares_list[$v]['update_time'] = substr($shares_list[$v]['update_time'] , 0 ,10);
                    if($interval!=$count){
                        unset($shares_list[$v]);
                    }
                }
            } 
        $shares_list = array_values($shares_list);
        // dump($shares_list);exit();
        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','No.')
        ->setCellValue('B1', 'type')
        ->setCellValue('C1', 'name')
        ->setCellValue('D1', 'personID')
        ->setCellValue('E1', 'banknum')
        ->setCellValue('F1', 'bankinfo')
        ->setCellValue('G1', 'rebate')
        ->setCellValue('H1', 'frequency')
        ->setCellValue('I1', 'created time');

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($shares_list);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i,  $i-1);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $shares_list[$i-2]['type_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $shares_list[$i-2]['name']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, "'".$shares_list[$i-2]['code']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, "'".$shares_list[$i-2]['banknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $shares_list[$i-2]['bankinfo']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' .$i, "$".$shares_list[$i-2]['money_usd'].".00");
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $shares_list[$i-2]['count']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $shares_list[$i-2]['update_time']);
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

    public function repay(){
        // // 设置页面标题
        $nowtime = date("Y-m-d");
        $this->title = 'REFEREE REPAYMENT PLAN';//'NOW TIME:'.$nowtime;
        // 获取到所有GET参数
        $get = $this->request->get();
        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->join(['cms_ma_referee'=>'referee'],'shares.rid=referee.id')
                    // ->join(['cms_ma_refereetype'=>'rtype'],'rtype.id=referee.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,type.roe,
                        referee.rtid,referee.rname,referee.rrname,referee.rbanknum,referee.rbankinfo,
                        agent.agent_name,agent.person')
                    ->order('shares.update_time desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.paied',0)
                    ->select();
           // dump($shares_list);exit();
           if(is_array($shares_list)){
                foreach($shares_list as $v=>$value){
                    $shares_list[$v]['update_time'] = substr($shares_list[$v]['update_time'] , 0 ,10);
                    if($shares_list[$v]['rtid'] == 10){
                        $shares_list[$v]['repay'] = 0.30*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0;
                        $shares_list[$v]['repay2'] = 0;
                        // $shares_list[$v]['grade'] = 0;
                    }
                    if($shares_list[$v]['rtid'] == 11){
                        $shares_list[$v]['repay'] = 0.04*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0.26*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay2'] = 0;
                    }
                    if($shares_list[$v]['rtid'] == 12){
                        $shares_list[$v]['repay'] = 0.04*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0.06*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay2'] = 0.20*strval($shares_list[$v]['money_usd']);
                    }
                }
            } 
        // dump($shares_list);exit();
        
        !empty($this->title) && $this->assign('title', $this->title);
        $this->assign([
           'list'=>$shares_list,
           // 'page'=>$page
        ]);
        return $this->fetch();
    }
    
    public function paied() {
        if (DataService::update($this->shares_table)) {
            $this->success("Confirmation of payment!", '');
        }
        $this->error("Confirm the failure and try again later!");      
    }

    public function repay_show(){
        $info = input();
        $info_id = $info['id'];
        $info_list = Db::name($this->shares_table)->where('id',$info_id)->find();
        $agent_list = Db::name($this->agent_table)->where('id',$info_list['aid'])->find();
        $referee_list = Db::name($this->referee_table)->where('id',$info_list['rid'])->find();
        $type_list = Db::name($this->holder_type)->where('id',$info_list['tid'])->find();
        $info_all = array_merge($type_list,$agent_list);
        $info_all = array_merge($info_all,$referee_list);
        $info_all = array_merge($info_all,$info_list);
        if($info_all['rtid']==10){
            $info_all['repay'] = strval($info_all['money_usd'])*0.3;
            $info_all['repay1'] = 0;
            $info_all['repay2'] = 0;
        }
        if($info_all['rtid']==11){
            $info_all['repay'] = strval($info_all['money_usd'])*0.04;
            $info_all['repay1'] = strval($info_all['money_usd'])*0.26;
            $info_all['repay2'] = 0;
        }
        if($info_all['rtid']==12){
            $buf = Db::name($this->referee_table)->where('id',$info_all['rrid'])->find();
            $info_all['rrbanknum'] = $buf['rbanknum'];
            $info_all['rrbankinfo'] = $buf['rbankinfo'];
        // dump($buf);exit();
            $info_all['repay'] = strval($info_all['money_usd'])*0.04;
            $info_all['repay1'] = strval($info_all['money_usd'])*0.06;
            $info_all['repay2'] = strval($info_all['money_usd'])*0.2;
        }
        // dump($info_all);exit();
        return $this->fetch('paied_form',['vo' => $info_all]);
    }

    public function rout(){

        $nowtime = date("Y-m-d");
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
        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->join(['cms_ma_referee'=>'referee'],'shares.rid=referee.id')
                    // ->join(['cms_ma_refereetype'=>'rtype'],'rtype.id=referee.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,user.code,
                        type.type_name,type.money_usd,
                        referee.rtid,referee.rrid,referee.rname,referee.rrname,
                        referee.rbanknum,referee.rbankinfo,
                        agent.agent_name,agent.person,agent.abanknum,agent.abankinfo')
                    ->order('shares.update_time desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.paied',0)
                    ->select();
           // dump($shares_list);exit();
           if(is_array($shares_list)){
                foreach($shares_list as $v=>$value){
                    $shares_list[$v]['update_time'] = substr($shares_list[$v]['update_time'] , 0 ,10);
                    if($shares_list[$v]['rtid'] == 10){
                        $shares_list[$v]['repay'] = 0.30*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0;
                        $shares_list[$v]['repay2'] = 0;
                        $shares_list[$v]['rbanknum'] = 'null';
                        $shares_list[$v]['rbankinfo'] = 'null';
                        $shares_list[$v]['rrbanknum'] = 'null';
                        $shares_list[$v]['rrbankinfo'] = 'null';
                    }
                    if($shares_list[$v]['rtid'] == 11){
                        $shares_list[$v]['repay'] = 0.04*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0.26*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay2'] = 0;
                        $shares_list[$v]['rrbanknum'] = 'null';
                        $shares_list[$v]['rrbankinfo'] = 'null';
                    }
                    if($shares_list[$v]['rtid'] == 12){
                        $shares_list[$v]['rrbanknum'] = $shares_list[$v]['rbanknum'];
                        $shares_list[$v]['rrbankinfo'] = $shares_list[$v]['rbanknum'];
                        $buf = Db::name($this->referee_table)->where('id',$shares_list[$v]['rrid'])->find();
                        $shares_list[$v]['rbanknum'] = $buf['rbanknum'];
                        $shares_list[$v]['rbankinfo'] = $buf['rbankinfo'];
                        $shares_list[$v]['repay'] = 0.04*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay1'] = 0.06*strval($shares_list[$v]['money_usd']);
                        $shares_list[$v]['repay2'] = 0.20*strval($shares_list[$v]['money_usd']);
                    }
                }
            } 
        // dump($shares_list);exit(); 
        // $shares_list = array_values($shares_list);
        // dump($shares_list);exit();
        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','No.')
        ->setCellValue('B1', 'type')
        ->setCellValue('C1', 'name')
        ->setCellValue('D1', 'personID')
        ->setCellValue('E1', 'created time')
        ->setCellValue('F1', 'agent name')
        ->setCellValue('G1', 'agent repay')
        ->setCellValue('H1', 'agent bank')
        ->setCellValue('I1', 'agent bankinfo')
        ->setCellValue('J1', 'first name')
        ->setCellValue('K1', 'first repay')
        ->setCellValue('L1', 'first bank')
        ->setCellValue('M1', 'first bankinfo')
        ->setCellValue('N1', 'second name')
        ->setCellValue('O1', 'second repay')
        ->setCellValue('P1', 'second bank')
        ->setCellValue('Q1', 'second bankinfo');
     

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($shares_list);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i,  $i-1);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $shares_list[$i-2]['type_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $shares_list[$i-2]['name']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, "'".$shares_list[$i-2]['code']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $shares_list[$i-2]['update_time']);

            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $shares_list[$i-2]['agent_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $shares_list[$i-2]['repay']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, "'".$shares_list[$i-2]['abanknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $shares_list[$i-2]['abankinfo']);

            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, $shares_list[$i-2]['rname']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, $shares_list[$i-2]['repay1']);
            $objPHPExcel->getActiveSheet()->setCellValue('L' . $i, "'".$shares_list[$i-2]['rbanknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('M' . $i, $shares_list[$i-2]['rbankinfo']);

            $objPHPExcel->getActiveSheet()->setCellValue('N' . $i, $shares_list[$i-2]['rrname']);
            $objPHPExcel->getActiveSheet()->setCellValue('O' . $i, $shares_list[$i-2]['repay2']);
            $objPHPExcel->getActiveSheet()->setCellValue('P' . $i, "'".$shares_list[$i-2]['rrbanknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('Q' . $i, $shares_list[$i-2]['rrbankinfo']);
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

}