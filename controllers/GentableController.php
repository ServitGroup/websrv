<?php

use \Servit\Restsrv\RestServer\RestException;
use \Servit\Restsrv\RestServer\RestController as BaseController;
use Illuminate\Database\Capsule\Manager as Capsule;
use Servit\Restsrv\Libs\Request;
use Carbon\Carbon;

class GentableController extends BaseController {



/**
*@noAuth
*@url GET /index/ 
*/
public function index(){
    $allheader = getallheaders();
    dump($allheader);
    dump(isset(getallheaders()['Access-Control-Request-Headers']));
}



/**
*@noAuth
*@url GET /columns/$table
*/
public function columns($table = null){
    if($table){
    Column::where('table_id',$table)->delete();
    $cols = Capsule::select("SELECT IS_NULLABLE,COLUMN_DEFAULT,TABLE_NAME,COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH,NUMERIC_PRECISION,NUMERIC_SCALE,COLUMN_TYPE,COLUMN_KEY,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= ? AND Table_SCHEMA= ? ", [$table, DB_NAME]);
    $i = 0;
    foreach ($cols as $col) {
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
            $c->inputtype = 'number';
            $c->datalenth = $col->NUMERIC_PRECISION;
            $c->numscale = $col->NUMERIC_SCALE;
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
        $c->save();
        $i++;
    }

}

}



/**
 *@noAuth
 *@url GET /controller/$table
 */
public function gencontroller($table = null ){
    if($table){
    dump($table);
    $modelname = ucfirst($this->depluralize($table));
    $my_file = __DIR__.'/../controllers/'.$modelname.'Controller.php';
    dump($my_file);
    if(!file_exists($my_file)){
$controller = "<?php

use \Servit\Restsrv\RestServer\RestException;
use \Servit\Restsrv\RestServer\RestController as BaseController;
use Illuminate\Database\Capsule\Manager as Capsule;
use Servit\Restsrv\Libs\Request;
use Carbon\Carbon;
use \Servit\Restsrv\Traits\DbTrait;

class {$modelname}Controller extends BaseController {

    use DbTrait;

    public function authorize(){
       return true;
    }    

    /**
    *@noAuth
    *@url GET /all/
    */
    public function all(){
        \$datas = $modelname::get();
        \$info = Dbinfo::where('table_name','$table')->first();
        \$columns = Column::where('table_id','$table')->get();
        return ['datas'=>\$datas,'columns'=>\$columns,'info'=>\$info,'status'=>'1'];
    }

    protected function model(){
        return new {$modelname}();
    }

}";

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
public function genmodel($table=null){
    if($table){

        $modelname = ucfirst($this->depluralize($table));
        dump($table,$modelname);
        $my_file = __DIR__.'/../models/'.$modelname.'.php';
        if(!file_exists($my_file)){
            $modeldata = "<?php
            use Illuminate\Database\Eloquent\Model;
            use Illuminate\Database\Eloquent\SoftDeletes;
            use Servit\Restsrv\Model\BaseModel;\n\n";
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
        $modeldata .= "class " . $modelname . " extends BaseModel
        {
\tprotected \$table = '$table';
\tprotected \$primaryKey = '$pk';
\tpublic \$timestamps = $timestamps;
} \n\n";

        echo 'created Model Name: ',$my_file;
        $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file);
        fwrite($handle, $modeldata);
        fclose($handle);
    } else {
        echo 'มี model นี้แล้ว';
    }
}
echo "\n<br/>";
exec('composer dump-autoload');
echo 'composer dump-autoload complete';
}

    /**
     *@noAuth
     *@url GET /genall/
     */
    public function genall()
    {


        echo '<br/>Gen Collumns<hr/>';
        Capsule::select('truncate columns;');
        $models = [];
        $modeldata = "<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;\n\n";

        $notusedtb = ['users','dbinfos', 'tbtemplate', 'columns', 'columns_copy1', 'menus', 'menus_copy1', 'menus_copy2'];
        $tables = Capsule::select('show tables');
        foreach ($tables as $table) {
            $pk = '';
            $timestamps = 0;
            $tb = $table->{'Tables_in_' . DB_NAME};
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
                    $c->save();
                    $i++;
                }
//--------- gen model -----------------------
                $model = ucfirst($this->depluralize($tb));
                $t = new stdClass();
                $t->model = $model;
                $t->table = $tb;

                $models[] = $t;
                if ($timestamps) {
                    $timestamps = 'true';
                } else {
                    $timestamps = 'false';
                }

                $modeldata .= "class " . $model . " extends BaseModel
{
\tprotected \$table = '$tb';
\tprotected \$primaryKey = '$pk';
\tpublic \$timestamps = $timestamps;
} \n\n";
//--------- gen model -----------------------
            }
        }
        echo '<hr/>';
        echo '<br/>gen Model<br/>';
        echo '<hr/>';
        $my_file = __DIR__ . "/../configs/models.php";
        $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file);
        fwrite($handle, $modeldata);
        fclose($handle);

        foreach ($models as $model) {
            echo $model->model . "\n<br/>";
        }
        echo '<hr/>';

        echo '<br/>gen Controller<br/>';
        echo '<hr/>';
foreach ($models as $model) {
            $my_file = __DIR__ . "/../controllers/".$model->model."Controller.php";
if(!file_exists($my_file)){
            echo $model->model . "Controller\n<br/>";

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
            echo '<textarea>',$controller,'</textarea><br/>';
                $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file);
                fwrite($handle, $controller);
                fclose($handle);

            } else{
                echo $model->model . "Controller.php file is exists\n<br/><hr/>";
            }
        }
        echo '<br/>gen Routers<br/>';
        echo '<hr/>';
        $routedata = "<?php\n";
        $routefile = __DIR__ . "/../route/routebygen.php";
        $handle = fopen($routefile, "w");
        echo '<br/><hr/>';
        foreach ($models as $model) {
            echo $model->model . "\n<br/>";
            $routedata .=" \$server->addClass('{$model->model}Controller', '/api/$model->table'); \n";
        }
        fwrite($handle, $routedata);
        fclose($handle);

        echo '<hr/>';
    }

    private  function depluralize($word)
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


}