<?php

return [

    'url_route_on' => true,
    'url_route_must'  =>  false,
    //模板参数替换
    'view_replace_str' => array(
        '__CSS__' => '/static/assets/css',
        '__JS__'  => '/static/assets/js',
        '__IMG__' => '/static/assets/img',
        '__FONT__'   =>'/statisc/fonts',
        '__KUI__'=>'/static/theme/kassets',
        // '__CSS__'=>'/static/theme/blue/css',
        // '__JS__'=>'/static/theme/blue/js',
        // '__IMG__'=>'/static/theme/blue/images'
    ),
    'template' => [
        // 模板引擎类型 支持 php think 支持扩展
        // 'view_path'    => './application/admin/view/default/',
        // 'view_path'    => './template/index/default/',
        //'theme_name'   =>'default',
        // 'theme_name'   =>'default',
        // 模板文件名分隔符
        'view_depr'    => '.',
    ],
];
