<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Log_omise_tr extends BaseModel
{
	protected $table = 'log_omise_tr';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

