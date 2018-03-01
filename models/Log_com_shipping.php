<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Log_com_shipping extends BaseModel
{
	protected $table = 'log_com_shipping';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

