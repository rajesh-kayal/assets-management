<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    use HasFactory;

    protected $fillable = [
        'Fixed_asset_no',
        'Class_code',
        'asset_type',
        'asset_description',
        'asset_vendor',
        'department_code',
        'location',
        'quantity',
        'purchase_date',
        'purchase_cost',
        'current_year_depreciation',
        'accumulated_depreciation',
        'invoice'

        ];


}
