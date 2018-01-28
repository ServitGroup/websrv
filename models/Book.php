<?php
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Servit\Restsrv\Model\BaseModel;

class Book extends BaseModel
{

    // use SoftDeletes;
    // protected $dates = ['deleted_at'];
    protected $table='books';
    protected $primaryKey='id';
}