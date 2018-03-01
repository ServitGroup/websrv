<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Com_payment extends BaseModel
{
	protected $table = 'com_payment';
	protected $primaryKey = 'id';
	public $timestamps = false;
} 

