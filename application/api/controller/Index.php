<?php

/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */

namespace app\api\controller;

use app\api\model\User as Users;
use controller\BasicApi;
use think\Db;
use think\Request;


class Index extends BasicApi {

	public $table = 'cms_user';
	public function index() {
        $list = Db::name($this->table)->where('id',31)->select();
        return json($list);
    }

    public function add(){
    	$user = new Users;

    }

    public function read($id=''){

    	$user = Users::get(31);
    	return json($user);
    }

}