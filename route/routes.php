<?php
if (APPMODE == 'debug') {
    $server->addClass('TestController', '/system/test', 'sys');
}

$server->addThemeClass('AdminThemeController', 'sys');
// $server->addClass('AdminlteController', '/admin', 'sys'); // fortest
// $server->addClass('AdminController', 'sys'); // Adminthem root file
$server->addClass('AdminController', '/admin', 'sys'); // fortest

$server->addThemeClass('SystemThemeController', 'sys');
$server->addClass('SystemController', '/system', 'sys'); // fortest


$server->addClass('LineServiceController', '/system/line', 'sys');
$server->addClass('SysController', 'sys'); // 
$server->addClass('GentableController', '/system/generator', 'sys'); // fortest
$server->addClass('QuestionController', '/api/v1/q', 'sys'); // fortest
$server->addClass('AnswerController', '/api/v1/answer', 'sys'); // fortest
// $server->addClass('UserController', '/api/users', 'sys'); // fortest
$server->addClass('RoleController', '/role', 'sys'); // fortest
$server->addClass('PermissController', '/permiss', 'sys'); // fortest
$server->addClass('RController', '/rbac', 'sys'); // fortest
$server->addClass('TController', '/t', 'sys'); // fortest
$server->addClass('AppController', '/api/v1', 'sys'); // fortest
$server->addClass('TlenController', '/tlen', 'sys'); // fortest
$server->addClass('JwtController', '', 'sys'); // fortest
// $server->addClass('RootController', '', 'sys'); // roottheme rootfile
$server->addThemeClass('RootThemeController', 'sys'); 
$server->addClass('LcrmController', '', 'sys'); // roottheme rootfile
if (file_exists(__DIR__ . '/routebygen.php')) {
    require_once __DIR__ . '/routebygen.php';
}
