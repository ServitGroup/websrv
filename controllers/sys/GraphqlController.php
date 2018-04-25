<?php
//----------------------------------------------
//FILE NAME:  GraphqlController.php gen for Servit Framework Controller
//DATE:		  2018-04-26(Thu) 00:25:24
//----------------------------------------------
use	\Servit\Restsrv\RestServer\RestException;
use	\Servit\Restsrv\RestServer\RestController as BaseController;
use	Illuminate\Database\Capsule\Manager as Capsule;
use	Servit\Restsrv\Libs\Request; 
use	Servit\Restsrv\Libs\Graphql as GraphQL; 
use	Servit\Restsrv\Libs\Linenotify;
use	Carbon\Carbon;
use \Servit\Restsrv\traits\DbTrait;

class GraphqlController extends BaseController {
    
    /**
    *@noAuth
    *@url GET /
    *@url POST /
    *----------------------------------------------
    *FILE NAME:  GraphqlController.php gen for Servit Framework Controller
    *DATE:		  2018-04-26(Thu) 00:25:52
    *----------------------------------------------
    */
    public function graphql(){
        try {
                GraphQL::require_all(   __DIR__ . '/../../graphql');
                GraphQL::loadQuery(     __DIR__ . '/../../graphql/query');
                GraphQL::loadMutation(  __DIR__ . '/../../graphql/mutation');
                $rs = GraphQL::execute($this->getquery(),$this->getvars(), $this->server);
                return $rs;
        } catch (Exception $e) {
            return[
                'status' => '0',
                'success'=> false,
                'msg'=> $e->getMessage(),
                'func'=> __CLASS__.'/'.__FUNCTION__,
            ]; 
        }
    }
    
    private function getquery(){
        $query = $this->input->input->query?:null;
        if(empty($query)) $query = $this->input->gets->query?:null;
        if(empty($query))  $query = $this->input->posts->query?:null;
        $query = $query ?:'{status}';
        return $query;
    }    
    
    private function getvars() {
        $variables = $this->input->input->variables?:null;
        if(empty($variables))  $variables = $this->input->gets->variables?:null;
        if(empty($variables))  $variables = $this->input->posts->variables?:null;
        $variables = $variables ?:[];
        return $variables;
    }
}

