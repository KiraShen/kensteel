<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/22
 * Time: 17:30
 */

namespace app\mshares\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
use PHPExcel_IOFactory;
use PHPExcel_Cell;
use PHPExcel;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Shares extends BasicAdmin
{
    public $shares_table = 'cms_ma_shares';
    public $equity_table = 'cms_ma_equity';
    public $user_table = 'cms_ma_user';
    public $agent_table = 'cms_ma_agent';
    public $holder_type = 'cms_ma_holdertype';
    public $equity_type = 'cms_ma_equitytype';
    public $out_list = [];

    public function holder(){
        // 设置页面标题
        $this->title = 'HOLDER SHARES INFOMATION';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        // dump($get);exit();
        // $db = Db::name($this->shares_table);

        $shares_list=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0);
        // $page = $shares_list->render();
        foreach (['name', 'agent_name','update_time'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                // dump($get[$key]);exit();
                $shares_list->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // $this->out_list =$shares_list;
        $shares_list = $shares_list->paginate(10);
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


    public function holder_out(){
        
        $fileName = date('_YmdHis');//or $xlsTitle 文件名称可根据自己情况设定
        $get = $this->request->get();
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

        foreach (['name', 'agent_name','update_time'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                dump($get[$key]);exit();
                $shares_list->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // 实例化完了之后就先把数据库里面的数据查出来
        // $sql = Db::name('cms_shares_cate')->select();
        $sql=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_holdertype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,type.package,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0)
                    ->select();

        // $sql = $this->out_list;
        // var_dump($sql);exit();

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','No.')
        ->setCellValue('B1','ID')
        ->setCellValue('C1','UUID')
        ->setCellValue('D1', 'agent')
        ->setCellValue('E1', 'name')
        ->setCellValue('F1', 'email')
        ->setCellValue('G1', 'phone')
        ->setCellValue('H1', 'share count')
        ->setCellValue('I1', 'USD')
        ->setCellValue('J1', 'personID')
        ->setCellValue('K1', 'address')
        ->setCellValue('L1', 'banknum')
        ->setCellValue('M1', 'bankinfo')
        ->setCellValue('N1', 'time')
        ->setCellValue('O1', 'package')
        ->setCellValue('P1', 'account info')
        ->setCellValue('Q1', 'mark info');

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i-1);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $sql[$i-2]['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $sql[$i-2]['uuid']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['agent_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $sql[$i-2]['name']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $sql[$i-2]['email']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, "'".$sql[$i-2]['phone']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $sql[$i-2]['shares']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $sql[$i-2]['money_usd']);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, "'".$sql[$i-2]['code']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, $sql[$i-2]['address']);
            $objPHPExcel->getActiveSheet()->setCellValue('L' . $i, "'".$sql[$i-2]['banknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('M' . $i, $sql[$i-2]['bankinfo']);
            $objPHPExcel->getActiveSheet()->setCellValue('N' . $i, $sql[$i-2]['update_time']);
            $objPHPExcel->getActiveSheet()->setCellValue('O' . $i, $sql[$i-2]['package']);
            $objPHPExcel->getActiveSheet()->setCellValue('P' . $i, "'".$sql[$i-2]['remark']);
            $objPHPExcel->getActiveSheet()->setCellValue('Q' . $i, $sql[$i-2]['infomark']);
        }

        
        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('sheet');      //设置sheet的名称
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来
        
        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel5");
        
        header("Content-Disposition: attachment;filename=$fileName.xls");
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        
        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }



    public function equity(){
        // 设置页面标题
        $this->title = 'EQUITY SHARES INFOMATION';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        // dump($get);exit();
        // $db = Db::name($this->shares_table);

        $shares_list=Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0);
        // $page = $shares_list->render();
        foreach (['name', 'agent_name','update_time'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                // dump($get[$key]);exit();
                $shares_list->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // $this->out_list =$shares_list;
        $shares_list = $shares_list->paginate(10);
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


    public function equity_out(){
        
        $fileName = date('_YmdHis');//or $xlsTitle 文件名称可根据自己情况设定
        $get = $this->request->get();
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

        foreach (['name', 'agent_name','update_time'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                dump($get[$key]);exit();
                $shares_list->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // 实例化完了之后就先把数据库里面的数据查出来
        // $sql = Db::name('cms_shares_cate')->select();
        $sql=Db::name($this->equity_table)
                    ->alias('shares')
                    ->join(['cms_ma_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_ma_equitytype'=>'type'],'shares.tid=type.id')
                    ->join(['cms_ma_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.name,user.email,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money_usd,type.package,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")
                    ->where('shares.status',1)
                    ->where('shares.mode',0)
                    ->select();

        // $sql = $this->out_list;
        // var_dump($sql);exit();

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','No.')
        ->setCellValue('B1','ID')
        ->setCellValue('C1','UUID')
        ->setCellValue('D1', 'agent')
        ->setCellValue('E1', 'name')
        ->setCellValue('F1', 'email')
        ->setCellValue('G1', 'phone')
        ->setCellValue('H1', 'share count')
        ->setCellValue('I1', 'USD')
        ->setCellValue('J1', 'personID')
        ->setCellValue('K1', 'address')
        ->setCellValue('L1', 'banknum')
        ->setCellValue('M1', 'bankinfo')
        ->setCellValue('N1', 'time')
        ->setCellValue('O1', 'package')
        ->setCellValue('P1', 'account info')
        ->setCellValue('Q1', 'mark info');

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i-1);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $sql[$i-2]['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $sql[$i-2]['uuid']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['agent_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $sql[$i-2]['name']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $sql[$i-2]['email']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, "'".$sql[$i-2]['phone']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $sql[$i-2]['shares']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $sql[$i-2]['money_usd']);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, "'".$sql[$i-2]['code']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, $sql[$i-2]['address']);
            $objPHPExcel->getActiveSheet()->setCellValue('L' . $i, "'".$sql[$i-2]['banknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('M' . $i, $sql[$i-2]['bankinfo']);
            $objPHPExcel->getActiveSheet()->setCellValue('N' . $i, $sql[$i-2]['update_time']);
            $objPHPExcel->getActiveSheet()->setCellValue('O' . $i, $sql[$i-2]['package']);
            $objPHPExcel->getActiveSheet()->setCellValue('P' . $i, "'".$sql[$i-2]['remark']);
            $objPHPExcel->getActiveSheet()->setCellValue('Q' . $i, $sql[$i-2]['infomark']);
        }

        
        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('sheet');      //设置sheet的名称
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来
        
        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel5");
        
        header("Content-Disposition: attachment;filename=$fileName.xls");
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        
        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }
}