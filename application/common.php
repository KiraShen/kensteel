<?php

/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */


use service\DataService;
use service\NodeService;
use Wechat\Loader;
use think\Db;

/**
 * 打印输出数据到文件
 * @param mixed $data
 * @param bool $replace
 * @param string|null $pathname
 */
function p($data, $replace = false, $pathname = NULL) {
    is_null($pathname) && $pathname = RUNTIME_PATH . date('Ymd') . '.txt';
    $str = (is_string($data) ? $data : (is_array($data) || is_object($data)) ? print_r($data, true) : var_export($data, true)) . "\n";
    $replace ? file_put_contents($pathname, $str) : file_put_contents($pathname, $str, FILE_APPEND);
}

/**
 * 获取微信操作对象
 * @param string $type
 * @return \Wechat\WechatReceive|\Wechat\WechatUser|\Wechat\WechatPay|\Wechat\WechatScript|\Wechat\WechatOauth|\Wechat\WechatMenu
 */
function & load_wechat($type = '') {
    static $wechat = array();
    $index = md5(strtolower($type));
    if (!isset($wechat[$index])) {
        $config = [
            'token'          => sysconf('wechat_token'),
            'appid'          => sysconf('wechat_appid'),
            'appsecret'      => sysconf('wechat_appsecret'),
            'encodingaeskey' => sysconf('wechat_encodingaeskey'),
            'mch_id'         => sysconf('wechat_mch_id'),
            'partnerkey'     => sysconf('wechat_partnerkey'),
            'ssl_cer'        => sysconf('wechat_cert_cert'),
            'ssl_key'        => sysconf('wechat_cert_key'),
            'cachepath'      => CACHE_PATH . 'wxpay' . DS,
        ];
        $wechat[$index] = Loader::get($type, $config);
    }
    return $wechat[$index];
}

/**
 * 安全URL编码
 * @param array|string $data
 * @return string
 */
function encode($data) {
    return str_replace(['+', '/', '='], ['-', '_', ''], base64_encode(serialize($data)));
}

/**
 * 安全URL解码
 * @param string $string
 * @return string
 */
function decode($string) {
    $data = str_replace(['-', '_'], ['+', '/'], $string);
    $mod4 = strlen($data) % 4;
    !!$mod4 && $data .= substr('====', $mod4);
    return unserialize(base64_decode($data));
}

/**
 * RBAC节点权限验证
 * @param string $node
 * @return bool
 */
function auth($node) {
    return NodeService::checkAuthNode($node);
}

/**
 * 设备或配置系统参数
 * @param string $name 参数名称
 * @param bool $value 默认是false为获取值，否则为更新
 * @return string|bool
 */
function sysconf($name, $value = false) {
    static $config = [];
    if ($value !== false) {
        $config = [];
        $data = ['name' => $name, 'value' => $value];
        return DataService::save('SystemConfig', $data, 'name');
    }
    if (empty($config)) {
        foreach (Db::name('SystemConfig')->select() as $vo) {
            $config[$vo['name']] = $vo['value'];
        }
    }
    return isset($config[$name]) ? $config[$name] : '';
}

function getCateNameById($id){
    return Db::name('cms_case_cate')->where('id',$id)->value('name');
}

function getArticleCateNameById($id){
    return Db::name('cms_article_cate')->where('id',$id)->value('name');
}

function getAboutusCateNameById($id){
    return Db::name('cms_aboutus_cate')->where('id',$id)->value('name');
}

function getProductCateNameById($id){
    return Db::name('cms_product_cate')->where('id',$id)->value('name');
}

function getTypeById($id){
    return Db::name('cms_type')->where('id',$id)->value('name');
}
/**
 * array_column 函数兼容
 */
if (!function_exists("array_column")) {

    function array_column(array &$rows, $column_key, $index_key = null) {
        $data = [];
        foreach ($rows as $row) {
            if (empty($index_key)) {
                $data[] = $row[$column_key];
            } else {
                $data[$row[$index_key]] = $row[$column_key];
            }
        }
        return $data;
    }

}

