<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Zortq extends BaseModel
{
	protected $table = 'zortqs';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

