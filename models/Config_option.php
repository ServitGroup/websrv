<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Config_option extends BaseModel
{
	protected $table = 'config_options';
	protected $primaryKey = 'pop_id';
	public $timestamps = false;
} 

