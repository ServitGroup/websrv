<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class App_option extends BaseModel
{
	protected $table = 'app_options';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

