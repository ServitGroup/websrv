<?php
use \Servit\Restsrv\RestServer\RestException;
use \Servit\Restsrv\RestServer\RestController as BaseController;
use Illuminate\Database\Capsule\Manager as Capsule;
use Servit\Restsrv\Libs\Request;
use Carbon\Carbon;
use \Servit\Restsrv\Traits\DbTrait;

class DbinfoController extends BaseController {

use DbTrait;

public function authorize(){
    return true;
}

/**
*@noAuth
*@url GET /all/
*/
public function all(){
    $datas = Dbinfo::get();
    $info = Dbinfo::where('table_name','dbinfos')->first();

    $columns = Column::where('table_id','dbinfos')->get();
    return ['datas'=>$datas,'columns'=>$columns,'info'=>$info,'status'=>'1'];
}

protected function model(){
    return new Dbinfo();
}

}