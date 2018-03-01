<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Log_com_omise extends BaseModel
{
	protected $table = 'log_com_omise';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

