<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/15
 * Time: 9:41
 */

namespace app\index\controller;

use think\Db;
class Contact extends BaseHome
{
    public function index(){
        return $this->fetch();
    }
}
