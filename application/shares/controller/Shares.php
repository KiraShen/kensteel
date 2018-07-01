<?php
/**
 * Created by PhpStorm.
 * User: kira
 * Date: 2018/6/22
 * Time: 17:30
 */

namespace app\shares\controller;


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
    public $shares_table = 'cms_shares';
    public $user_table = 'cms_user';
    public $agent_table = 'cms_agent';
    public $table = 'cms_shares_cate';
    public $out_list = [];

    public function index(){
        // 设置页面标题
        $this->title = '股票信息表';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        // dump($get);exit();
        $db = Db::name($this->shares_table);

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
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")->where('shares.status',1);
        // $page = $shares_list->render();
        foreach (['first_name', 'agent_name','update_time'] as $key) {
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

    public function out(){
        $spreadsheet = new Spreadsheet();
        $worksheet = $spreadsheet->getActiveSheet();
        $worksheet->setTitle('学生成绩表');
        //表头
        //设置单元格内容
        $worksheet->setCellValueByColumnAndRow(1, 1, '学生成绩表');
        $worksheet->setCellValueByColumnAndRow(1, 2, '姓名');
        $worksheet->setCellValueByColumnAndRow(2, 2, '语文');
        $worksheet->setCellValueByColumnAndRow(3, 2, '数学');
        $worksheet->setCellValueByColumnAndRow(4, 2, '外语');
        $worksheet->setCellValueByColumnAndRow(5, 2, '总分');

        $stmt=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_shares_cate'=>'type'],'shares.tid=type.id')
                    ->join(['cms_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.first_name,user.last_name,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")->where('shares.status',1)->select();

        // $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $len = count($stmt);
        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        
        $j = 0;
        for ($i=0; $i < $len; $i++) { 
            $j = $i + 3;
            $worksheet->setCellValueByColumnAndRow(1, $j, $stmt[$i]['first_name']);
            $worksheet->setCellValueByColumnAndRow(2, $j, $stmt[$i]['last_name']);
            $worksheet->setCellValueByColumnAndRow(3, $j, $stmt[$i]['code']);
            $worksheet->setCellValueByColumnAndRow(4, $j, $stmt[$i]['shares']);
            $worksheet->setCellValueByColumnAndRow(5, $j, $stmt[$i]['money'] );
        }
        // 下载
        $filename = '成绩表.xlsx';
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'.$filename.'"');
        header('Cache-Control: max-age=0');

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');

    }
    public function outs(){
        
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

        foreach (['first_name', 'agent_name','update_time'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                dump($get[$key]);exit();
                $shares_list->where($key, 'like', "%{$get[$key]}%");
            }
        }
        // 实例化完了之后就先把数据库里面的数据查出来
        // $sql = Db::name('cms_shares_cate')->select();
        $sql=Db::name($this->shares_table)
                    ->alias('shares')
                    ->join(['cms_user'=>'user'],'shares.pid=user.id')
                    ->join(['cms_shares_cate'=>'type'],'shares.tid=type.id')
                    ->join(['cms_agent'=>'agent'],'shares.aid=agent.id')
                    ->field('shares.*,
                        user.first_name,user.last_name,user.phone,
                        user.bankinfo,user.banknum,user.code,user.address,
                        type.type_name,type.shares,type.money,
                        agent.agent_name,agent.person')
                    // ->field(date('Y-m-d','create_at'))
                    ->order('create_at desc')
                    ->where("shares.remark <> ''")->where('shares.status',1)->select();
        // $sql = $this->out_list;
        // var_dump($sql);exit();

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1','No.')
        ->setCellValue('B1', '代理公司')
        ->setCellValue('C1', '姓')
        ->setCellValue('D1', '名')
        ->setCellValue('E1', '股票')
        ->setCellValue('F1', '金额')
        ->setCellValue('G1', '手机')
        ->setCellValue('H1', '身份证号')
        ->setCellValue('I1', '地址')
        ->setCellValue('J1', '银行信息')
        ->setCellValue('K1', '银行账户')
        ->setCellValue('L1', '时间')
        ->setCellValue('M1', '备注信息')
        ->setCellValue('N1', '记录信息');

        //$objPHPExcel = $objPHPExcel->getActiveSheet();
        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i-1);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $sql[$i-2]['agent_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $sql[$i-2]['last_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['first_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $sql[$i-2]['shares']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $sql[$i-2]['money']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, "'".$sql[$i-2]['phone']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, "'".$sql[$i-2]['code']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $sql[$i-2]['address']);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, $sql[$i-2]['bankinfo']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, "'".$sql[$i-2]['banknum']);
            $objPHPExcel->getActiveSheet()->setCellValue('L' . $i, $sql[$i-2]['update_time']);
            $objPHPExcel->getActiveSheet()->setCellValue('M' . $i, $sql[$i-2]['remark']);
            $objPHPExcel->getActiveSheet()->setCellValue('N' . $i, $sql[$i-2]['infomark']);
        }

        
        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('sheet');      //设置sheet的名称
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来
        
        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel2007");
        
        $nowtime = strtotime('now');
        header('Content-Disposition: attachment;filename="shares.xlsx"');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        
        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }
}