<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Apikey_service extends BaseModel
{
	protected $table = 'apikey_service';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

