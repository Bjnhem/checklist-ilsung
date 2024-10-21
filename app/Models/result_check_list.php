<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class result_check_list extends Model
{
    use HasFactory;
    protected $table = 'result_check_list';
    public $timestamps = true;
    protected $guarded = [];

    public function result_check_list()
    {
        return $this->belongsTo(master_check_list_line::class, 'id_check_list_line');
    }
}
