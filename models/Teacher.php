<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Teacher extends BaseModel
{
	protected $table = 'teachers';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

