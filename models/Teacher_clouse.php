<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Teacher_clouse extends BaseModel
{
	protected $table = 'teacher_clouses';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

