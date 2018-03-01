<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Student extends BaseModel
{
	protected $table = 'students';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

