<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Student_clouse extends BaseModel
{
	protected $table = 'student_clouses';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

