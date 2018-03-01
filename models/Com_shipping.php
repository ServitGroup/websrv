<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Com_shipping extends BaseModel
{
	protected $table = 'com_shipping';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

