<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Clouse extends BaseModel
{
	protected $table = 'clouses';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

