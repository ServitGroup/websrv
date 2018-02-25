<?php

use \Servit\Restsrv\RestServer\RestException;
use \Servit\Restsrv\RestServer\RestController as BaseController;
use Illuminate\Database\Capsule\Manager as Capsule;
use Servit\Restsrv\Libs\Request;
use Carbon\Carbon;
use \Servit\Restsrv\Traits\DbTrait;

class ZortqController extends BaseController {

    use DbTrait;

    public function authorize(){
       return true;
    }    

    /**
    *@noAuth
    *@url GET /all/
    */
    public function all(){
        $datas = Zortq::get();
        $info = Dbinfo::where('table_name','zortqs')->first();
        $columns = Column::where('table_id','zortqs')->get();
        return ['datas'=>$datas,'columns'=>$columns,'info'=>$info,'status'=>'1'];
    }

    protected function model(){
        return new Zortq();
    }

}