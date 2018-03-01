<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Apikey_method extends BaseModel
{
	protected $table = 'apikey_method';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

