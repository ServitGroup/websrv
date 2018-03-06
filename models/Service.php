<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;


class Service extends BaseModel
{
	protected $table = 'services';
	protected $primaryKey = 'id';
	public $timestamps = true;

	public function methods(){
		return $this->hasMany('Method');
	}

} 

