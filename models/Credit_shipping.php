<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Credit_shipping extends BaseModel
{
	protected $table = 'credit_shipping';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

