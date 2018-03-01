<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Omise_recipient extends BaseModel
{
	protected $table = 'omise_recipients';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

