<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Apikey extends BaseModel
{
	protected $table = 'apikeys';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 
