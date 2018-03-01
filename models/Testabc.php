<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Testabc extends BaseModel
{
	protected $table = 'testabc';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

