<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Smslog extends BaseModel
{
	protected $table = 'smslogs';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

