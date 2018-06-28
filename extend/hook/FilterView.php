<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */

namespace hook;

use think\Request;

/**
 * 视图输出过滤
 * Class FilterView
 * @package hook
 * @author jonny <980218641@qq.com>
 * @date 2017/04/25 11:59
 */
class FilterView {

    /**
     * 当前请求对象
     * @var Request
     */
    protected $request;

    /**
     * 行为入口
     * @param $params
     */
    public function run(&$params) {
        $this->request = Request::instance();
        $app = $this->request->root(true);
        $replace = [
            '__APP__'    => $app,
            '__SELF__'   => $this->request->url(true),
            '__PUBLIC__' => strpos($app, EXT) ? ltrim(dirname($app), DS) : $app,
        ];
        $params = str_replace(array_keys($replace), array_values($replace), $params);
        if (!IS_CLI) {
            $this->baidu($params);
            //$this->cnzz($params);
        }
    }

    /**
     * 百度统计实现代码
     * @param $params
     */
    public function baidu(&$params) {
        if (($key = sysconf('tongji_baidu_key'))) {
            $script = <<<SCRIPT
        <script>
            var _hmt = _hmt || [];
            (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?{$key}";
                var s = document.getElementsByTagName("script")[0]; 
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
SCRIPT;
            $params = preg_replace('|</body>|i', "{$script}\n    </body>", $params);
        }
    }

    /**
     * CNZZ统计实现代码
     * @param $params
     */
   /* public function cnzz(&$params) {
        if (($key = sysconf('tongji_cnzz_key'))) {
            $query = ['siteid' => $key, 'r' => $this->request->server('HTTP_REFERER'), 'rnd' => mt_rand(100000, 999999)];
            $imgSrc = 'https://c.cnzz.com/wapstat.php?' . http_build_query($query);
            $params = preg_replace('|</body>|i', "<img src='{$imgSrc}' style='display:block;position:absolute' width='0' height='0'/>\n    </body>", $params);
        }
    }*/

}
