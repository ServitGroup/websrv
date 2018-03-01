<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Phproute extends BaseModel
{
	protected $table = 'phproutes';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

