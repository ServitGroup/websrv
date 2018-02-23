<?php

use Illuminate\Database\Capsule\Manager as Capsule;
use \Servit\Restsrv\RestServer\RestController as BaseController;

class GentableController extends BaseController
{
    public function __construct(){
        $this->createcolumns();
        $this->createddbinfos();
        $this->createmenus();
}

/**
 *@noAuth
 *@url GET /index/
 */
    public function index()
    {
        echo "Code gen system for Service Restful Api";
        echo "<a href='http://127.0.0.1:8080/routes/tlen/GentableController'>this</a>";
    }

/**
 *@noAuth
 *@url GET /columns/$table
 *@url GET /columns/$table/$ovr
 */
    public function columns($table = null,$ovr=0)
    {
        if($table == '$table') exit();
        if($ovr=='$ovr') $ovr = 0;
        if ($table) {
            if($ovr){
                Column::where('table_id', $table)->delete();
            } else {
                $cols = Column::where('table_id', $table)->get();
                if($cols){
                   throw new Exception('Table Columns is exists', 1);
                }
            }
            $this->makecols($table,$ovr);
        }

    }

/**
 *@noAuth
 *@url GET /controller/$table
 */
    public function gencontroller($table = null)
    {
        if($table == '$table') exit();
        if ($table) {
            dump($table);
            $model = new \stdClass();
            $modelname = ucfirst($this->depluralize($table));
            $model->table = $table;
            $model->model = $modelname;
            $my_file = __DIR__ . '/../controllers/' . $modelname . 'Controller.php';
            dump($my_file);
            if (!file_exists($my_file)) {
                $controller = $this->makecontroller($model);
                $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file);
                fwrite($handle, $controller);
                fclose($handle);
            } else {
                echo 'มีไฟล์แล้ว';
            }
        }
    }

/**
 *@noAuth
 *@url GET /model/$table
 *@url GET /model
 */
    public function genmodel($table = null)
    {
        if($table=="$table") exit();
        if ($table) {
            $modelname = ucfirst($this->depluralize($table));
            dump($table, $modelname);
            $my_file = __DIR__ . '/../models/' . $modelname . '.php';
            $class_exists = (!class_exists($modelname));
            if (!file_exists($my_file) && $class_exists) {
                $cols = Capsule::select("SELECT IS_NULLABLE,COLUMN_DEFAULT,TABLE_NAME,COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH,NUMERIC_PRECISION,NUMERIC_SCALE,COLUMN_TYPE,COLUMN_KEY,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= ? AND Table_SCHEMA= ? ", [$table, DB_NAME]);
                $i = 0;
                $pk = 'id';
                $timestamps = 0;
                foreach ($cols as $col) {
                    if (empty($pk) && $col->COLUMN_KEY == 'PRI') {
                        $pk = $col->COLUMN_NAME;
                    }
                    if ($col->COLUMN_NAME == 'created_at') {
                        $timestamps = 1;
                    }
                }
                if ($timestamps) {
                    $timestamps = 'true';
                } else {
                    $timestamps = 'false';
                }
                $modeldata = $this->makemodlefile($modelname, $table,$pk, $timestamps);
                echo 'created Model Name: ', $my_file;
                $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file);
                fwrite($handle, $modeldata);
                fclose($handle);
                echo "\n<br/>";
                echo 'composer dump-autoload complete';
                exec('composer dump-autoload');
            } else {
                echo 'มี model นี้แล้ว';
            }
        }
    }

/**
 *@noAuth
 *@url GET /genall/
 *@url GET /genall/ovr/$ovr
 *@url GET /genall/$basepath/$ovr
 */
    public function genall($basepath=null,$ovr=0)
    {
        if($basepath == '$basepath') {
            $basepath = 'v1/';
        } else {
            if($basepath) {
                $basepath = $basepath.'/';
            } else {
                $basepath = 'v1/';
            }
        }
        if($ovr=='$orv') $ovr=0;
        // dump($basepath,$ovr);
        echo '<br/>Gen Collumns<hr/>';
        if($ovr){
            Capsule::select('truncate columns;');
        }
        $models = [];
        $tables = Capsule::select('show tables');
        // if($ovr) Capsule::select('truncate columns;');
        foreach ($tables as $table) {
            $tb = $table->{'Tables_in_' . DB_NAME};
            if ($ovr) {
                Column::where('table_id', $tb)->delete();
            } else {
                $cols = Column::where('table_id', $tb)->get();
                // dump($tb,$cols->count());
                if ($cols->count() > 0 ) {
                    echo  "Table Columns is exists\n<br/>";
                } else {
                    $ovr = 1;
                }
            }
            $t = $this->makecols($tb,$ovr);
            $t->modeldata = $this->makemodlefile($t);
            $t->service = $this->makeserviefile($t);
            $t->controller = $this->makecontroller($t);
            $models[] = $t;
            }
        echo '<hr/>';
        $sort = 10;
        foreach ($models as $model) {
            // dump($model);
            $dbinfo = Dbinfo::where('table_name',$model->table)->first();
            if(!$dbinfo){
                $dbinf = new Dbinfo();
                $dbinf->table_name = $model->table;
                $dbinf->title = $model->model;
                $dbinf->sub_title = $model->model;
                $dbinf->save();
            }

            $menu = Menu::where('table_name',$model->table)->first();
            // dump($menu);
            if(!$menu){  $menu = new Menu(); }
                $menu->menu_position = 'LEFTSIDEBAR';
                $menu->group = '1';
                $menu->table_name = $model->table;
                $menu->label = $model->model;
                $menu->permalink = $model->table;
                $menu->component = 'Template';
                $menu->icon_class = 'dashboard';
                $menu->classname = 'material-icons text-default';
                $menu->status = '1';
                $menu->parent_id = '0';
                $menu->description = '';
                $menu->sort = $sort;
                $menu->crated_by = 'system';
                $menu->updated_by = 'system';
                $menu->save();
                $sort++;

            $modelfile = __DIR__ . '/../../models/' . $model->model . '.php';
            if (!class_exists($model->model) && !file_exists($modelfile)) {
                echo 'create ' . $modelfile . "'\n<br/>";
                $handle = fopen($modelfile, "w");
                fwrite($handle, $model->modeldata);
                fclose($handle);
            } else {
                echo $modelfile . " class or file exist\n<br/>";
            }
            
            $servfile = __DIR__.'/../../services/'.$model->model.'Service.php';
            if (!class_exists($model->model) && !file_exists($servfile)) {
                echo 'create ' . $servfile . "'\n<br/>";
                $handle = fopen($servfile, "w");
                fwrite($handle, $model->service);
                fclose($handle);
            } else {
                echo $servfile . " class or file exist\n<br/>";
            }

            $controllerfile = __DIR__ . "/../../controllers/" . $model->model . "Controller.php";
            if (!file_exists($controllerfile)) {
                echo $model->model . "Controller\n<br/>";
                echo '<textarea>', $model->controller, '</textarea><br/>';
                dump($controllerfile);
                $handle = fopen($controllerfile, 'w') or die('Cannot open file:  ' . $controllerfile);
                fwrite($handle, $model->controller);
                fclose($handle);

            } else {
                echo $model->model . "Controller.php file is exists\n<br/><hr/>";
            }

        }
        echo '<br/>gen Routers<br/>';
        echo '<hr/>';
        $routedata = "<?php\n";
        $routefile = __DIR__ . "/../../route/routebygen.php";
        $handle = fopen($routefile, "w");
        echo '<br/><hr/>';
        foreach ($models as $model) {
            echo $model->model . "\n<br/>";
            $path = '/api/'.$basepath.$model->table;
            $routedata .= " \$server->addClass('{$model->model}Controller','$path'); \n";
        }
        fwrite($handle, $routedata);
        fclose($handle);

        echo '<hr/>';
    }

    private function depluralize($word)
    {
            // Here is the list of rules. To add a scenario,
                    // Add the plural ending as the key and the singular
                    // ending as the value for that key. This could be
                    // turned into a preg_replace and probably will be
                    // eventually, but for now, this is what it is.
                    //
                    // Note: The first rule has a value of false since
                    // we don't want to mess with words that end with
                    // double 's'. We normally wouldn't have to create
                    // rules for words we don't want to mess with, but
                    // the last rule (s) would catch double (ss) words
                    // if we didn't stop before it got to that rule.
                    $rules = array(
                        'ss' => false,
                        'os' => 'o',
                        'ies' => 'y',
                        'xes' => 'x',
                        'oes' => 'o',
                        'ies' => 'y',
                        'ves' => 'f',
                        's' => '');
            // Loop through all the rules and do the replacement.
                    foreach (array_keys($rules) as $key) {
            // If the end of the word doesn't match the key,
                        // it's not a candidate for replacement. Move on
                        // to the next plural ending.
                        if (substr($word, (strlen($key) * -1)) != $key) {
                            continue;
                        }

            // If the value of the key is false, stop looping
                        // and return the original version of the word.
                        if ($key === false) {
                            return $word;
                        }

            // We've made it this far, so we can do the
                        // replacement.
                        return substr($word, 0, strlen($word) - strlen($key)) . $rules[$key];
                    }
                    return $word;
    }


private function makemodlefile($model) {
$modeldata = "<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;\n\n
class " . $model->model . " extends BaseModel
{
\tprotected \$table = '$model->table';
\tprotected \$primaryKey = '$model->pk';
\tpublic \$timestamps = $model->timestamps;
} \n\n";
return $modeldata;
}

private function makeserviefile($model) {
$servicedata = "<?php
use \Servit\Restsrv\RestServer\RestException as TestException;
use \Servit\Restsrv\Traits\DbTrait as DbTrait;
use \Servit\Restsrv\Service\BaseService as BaseService;
use \Servit\Restsrv\Service\BasedbService as BasedbService;
use Illuminate\Database\Capsule\Manager as Capsule;
\n
class " . $model->model . "Service extends BaseService
{\n\n\n
}\n";
return $servicedata;

}

private function makecontroller($model){

$controller = "<?php
use \Servit\Restsrv\RestServer\RestException;
use \Servit\Restsrv\RestServer\RestController as BaseController;
use Illuminate\Database\Capsule\Manager as Capsule;
use Servit\Restsrv\Libs\Request;
use Carbon\Carbon;
use \Servit\Restsrv\Traits\DbTrait;

class {$model->model}Controller extends BaseController {

use DbTrait;

public function authorize(){
    return true;
}

/**
*@noAuth
*@url GET /all/
*/
public function all(){
    \$datas = $model->model::get();
    \$info = Dbinfo::where('table_name','$model->table')->first();

    \$columns = Column::where('table_id','$model->table')->get();
    return ['datas'=>\$datas,'columns'=>\$columns,'info'=>\$info,'status'=>'1'];
}

protected function model(){
    return new {$model->model}();
}

}";
return $controller;

}

    private function makeroute(){

    }

    private function makecols($table,$ovr) 
    {
        $t = new \stdClass();
        $pk = '';
        $timestamps = 0;
        $tb = $table;
        $t->table = $tb;
        $notusedtb = [];
        if (!in_array($tb, $notusedtb)) {
            echo $tb, "<br/>\n";

            $cols = Capsule::select("SELECT IS_NULLABLE,COLUMN_DEFAULT,TABLE_NAME,COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH,NUMERIC_PRECISION,NUMERIC_SCALE,COLUMN_TYPE,COLUMN_KEY,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= ? AND Table_SCHEMA= ? ", [$tb, DB_NAME]);
            $i = 0;
            foreach ($cols as $col) {
                if (empty($pk) && $col->COLUMN_KEY == 'PRI') {
                    $pk = $col->COLUMN_NAME;
                }

                if ($col->COLUMN_NAME == 'created_at') {
                    $timestamps = 1;
                }

                $c = new Column();
                $c->table_id = $col->TABLE_NAME;
                $c->key = $col->COLUMN_NAME;
                $c->key_view = '';
                $cname = strtr($col->COLUMN_NAME, "_", " ");
                $c->label = ucwords($cname);

                if ($col->IS_NULLABLE == 'NO') {
                    $c->required = 'required';
                }

                if (in_array($col->DATA_TYPE, ['date', 'time', 'datetime', 'timestamp', 'year'])) {
                    $c->inputtype = 'datetime-local';
                } else if (in_array($col->DATA_TYPE, ['tinyint', 'boolean', 'smallint', 'mediumint', 'int', 'integer', 'bigint', 'decimal', 'dec', 'numeric', 'fixed', 'float', 'double', 'bit'])) {
                        // + "COLUMN_KEY"  : "int(10) unsigned"
                    $c->inputtype = 'number';
                    $c->datalenth = $col->NUMERIC_PRECISION;
                    $c->numscale = $col->NUMERIC_SCALE;
                        // $c->unsigned = 0;
                } elseif (in_array($col->DATA_TYPE, ['blob', 'mediumblob', 'longblob', 'tinytext', 'text', 'mediumtext', 'longtext', 'enum', 'set'])) {
                    $c->inputtype = 'textarea';
                } else {
                    if ($col->DATA_TYPE == 'varchar') {
                        if ($col->CHARACTER_MAXIMUM_LENGTH > 255) {
                            $c->inputtype = 'textarea';
                        } else {
                            $c->inputtype = 'textinput';
                        }
                    } else {
                        $c->inputtype = 'textinput';
                    }
                    $c->datalenth = $col->CHARACTER_MAXIMUM_LENGTH;
                }
                $c->datatype = $col->DATA_TYPE;
                $c->visible = 1;
                    // $c->classname = '';
                    // $c->width = '';
                    // $c->height = '';
                $c->searchable = 1;
                $c->orderable = 1;
                    // $c->search = '';
                $c->sort = $i;
                $c->json = json_encode($col, JSON_UNESCAPED_UNICODE);
                    // $c->datadic = '';
                $c->description = $col->COLUMN_COMMENT;
                // dump($ovr);
                if($ovr){
                    $c->save();
                }
                $i++;
            }
            $model = ucfirst($this->depluralize($tb));
            $t->model = $model;
            $t->table = $tb;
            $t->pk = $pk;

            if ($timestamps) {
                $t->timestamps = 'true';
            } else {
                $t->timestamps = 'false';
            }


        }

        return $t;
    }

    private function createcolumns(){
        $sql = "CREATE TABLE IF NOT EXISTS `columns`  (
              `id` int(11) NOT NULL AUTO_INCREMENT,
                `table_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อtable',
                `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `key_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'table ref',
                `key_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'table id',
                `key_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'fieldto ref',
                `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `inputtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `datatype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `required` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `datalenth` int(10) NULL DEFAULT 0,
                `numscale` int(10) NULL DEFAULT 0,
                `unsigned` int(1) NULL DEFAULT 0,
                `visible` int(1) UNSIGNED NULL DEFAULT 1,
                `export` int(1) NULL DEFAULT 1,
                `gridview` int(1) NULL DEFAULT 1,
                `frmview` int(1) NULL DEFAULT 1,
                `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `width` int(11) NULL DEFAULT NULL,
                `height` int(11) NULL DEFAULT NULL,
                `searchable` int(1) NULL DEFAULT NULL,
                `orderable` int(1) NULL DEFAULT NULL,
                `search` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '{\"search\":\"\", \"regex\":\"\" }',
                `sort` int(3) NULL DEFAULT NULL,
                `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `datadic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                `description` text CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                PRIMARY KEY (`id`) USING BTREE
                ) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
          ";
        return Capsule::statement($sql);
    }
    private function createddbinfos(){
        $sql= "
        CREATE TABLE IF NOT EXISTS `dbinfos`  (
        `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
        `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        PRIMARY KEY (`id`) USING BTREE
        ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
        ";
        return Capsule::statement($sql);
    }
    private function createmenus(){
        $sql= "CREATE TABLE IF NOT EXISTS `menus`  (
        `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
        `menu_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'TOP  LEFT RIGHT BOTTOM',
        `group` tinyint(4) NULL DEFAULT NULL COMMENT 'group of เมนู',
        `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'เมนูที่มี tables',
        `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ซื้อ Menu',
        `permalink` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'permalink',
        `component` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `icon_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'icon class',
        `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `status` tinyint(1) NULL DEFAULT 1 COMMENT 'status 1 0 ',
        `parent_id` int(10) UNSIGNED NULL DEFAULT 0,
        `description` text CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT 'การเลียง',
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        `crated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
        PRIMARY KEY (`id`) USING BTREE
        ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;";
    return Capsule::statement($sql);
    }
}