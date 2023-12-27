<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asset;
use App\Models\AssetClass;

class ReportController extends Controller
{
    public function AllReport()
    {
        $assets = Asset::join('asset_classes', 'assets.Class_code', '=', 'asset_classes.class_id')
            ->select(
                'assets.Fixed_asset_no',
                'assets.quantity',
                'assets.asset_description',
                'assets.asset_manufacturing',
                'asset_classes.class_description',
                'asset_classes.asset_life',
                'assets.purchase_cost',
                \DB::raw('DATEDIFF(CURRENT_DATE, assets.purchase_date) AS days_since_purchase'),
                \DB::raw('assets.purchase_cost * DATEDIFF(CURRENT_DATE, assets.purchase_date) * asset_classes.Rate_of_def / 365 AS current_year_depreciation'),
                \DB::raw('(SELECT IFNULL(SUM(b.purchase_cost * DATEDIFF(CURRENT_DATE, b.purchase_date) * ac.Rate_of_def / 365), 0)
                        FROM assets b
                        JOIN asset_classes ac ON ac.class_id = b.Class_code
                        WHERE b.id = assets.id AND b.purchase_date < assets.purchase_date)
                        + (assets.purchase_cost * DATEDIFF(CURRENT_DATE, assets.purchase_date) * asset_classes.Rate_of_def / 365) AS accumulated_depreciation')
            )
            ->get();

            // dd($assets);

            // die();

        return view('report', compact('assets'));
    }
}
