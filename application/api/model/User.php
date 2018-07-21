<?php

namespace app\api\model;

use think\Model;

class User extends Model{
	protected $name = 'cms_user';

	// protected $connection = [
	//     // 数据库类型
	//     'type'            => 'mysql',
	//     // 服务器地址
	//     'hostname'        => '127.0.0.1',
	//     // 数据库名
	//     'database'        => 'cms',
	//     // 用户名
	//     'username'        => 'root',
	//     // 密码
	//     'password'        => '000000',
	//     // 端口
	//     'hostport'        => '3306',
	//     // 数据库连接参数
	//     'params'          => [],
	//     // 数据库编码默认采用utf8
	//     'charset'         => 'utf8',
	//     // 数据库表前缀
	//     'prefix'          => 'cms_',
	//     // 数据库调试模式
	//     'debug'           => true,
	// ];

	// protected $insert =[
	// 	'status' => 1,
	// ];
	// protected $field = [
	// 	'id' =>int,
	// 	'create_at' => 'int',
	// 	'update_at' => 'int',
	// 	'first_name','last_name','username',
	// ];
}