<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Lang extends BaseModel
{
	protected $table = 'langs';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

