<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Domain extends BaseModel
{
	protected $table = 'domains';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

