<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Book extends BaseModel
{
	protected $table = 'books';
	protected $primaryKey = 'id';
	public $timestamps = true;
} 

