<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Db extends BaseModel
{
	protected $table = 'dbs';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

