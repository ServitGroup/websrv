<?php
use \Servit\Restsrv\RestServer\RestException;
use Servit\Restsrv\RestServer\ThemeController;
use \Servit\Restsrv\Libs\Request;

class AdminController extends AdminThemeController
{



    /**
    *@noAuth
    *@url GET /
    */
    public function admin()
    {
        echo 'admin Index';
    }


    /**
    *@noAuth
    *@url GET /test/
    */
    public function test()
    {
        echo 'admin test';
    }
}
