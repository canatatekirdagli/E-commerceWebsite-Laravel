<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sepet extends Model
{
    use SoftDeletes;

    protected $table = "sepet";

    protected $guarded = [];

    const CREATED_AT = 'olusturma_tarihi';
    const UPDATED_AT = 'guncelleme_tarihi';


}
