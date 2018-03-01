<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Apilog extends BaseModel
{
	protected $table = 'apilogs';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

