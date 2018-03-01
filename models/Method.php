<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Method extends BaseModel
{
	protected $table = 'methods';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

