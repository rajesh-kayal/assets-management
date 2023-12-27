<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asset;
use App\Models\AssetClass;
use App\Models\Vendor;
use App\Models\Department;
use App\Models\Location;

class AssetController extends Controller
{
    public function fixedassetid()
    {
        $lastAsset = Asset::latest('id')->first();
        $currentYear = now()->year;
        if ($lastAsset) {
            $fixedassetid = "IVDFA/{$currentYear}/" . str_pad($lastAsset->id + 1, 3, '0', STR_PAD_LEFT);
        } else {
            $fixedassetid = "IVDFA/{$currentYear}/001";
        }
        dd($fixedassetid);
        die();
        return view('add.add-asset', ['fixedassetid' => $fixedassetid]);
    }

    public function assAssets()
    {
        $classIds = AssetClass::orderBy('class_id', 'asc')->pluck('class_id');
        $life = AssetClass::pluck('asset_life');
        $vendors = Vendor::pluck('vendor_name');
        $department = Department::pluck('department_code');
        $Location = Location::pluck('name');

        $lastAsset = Asset::latest('id')->first();
        $currentYear = now()->year;
        if ($lastAsset) {
            $fixedassetid = "IVDFA/{$currentYear}/" . str_pad($lastAsset->id + 1, 3, '0', STR_PAD_LEFT);
        } else {
            $fixedassetid = "IVDFA/{$currentYear}/001";
        }
        return view('add.add-asset', compact('classIds', 'vendors', 'department', 'Location', 'life','fixedassetid'));
    }
    public function getAllAsset()
    {
        $asset = Asset::get();
        return view('asset')->with(['asset' => $asset]);
    }

    public function saveAsset(Request $request)
    {
        // $validatedData = $request->validate([
        //     'Fixed_asset_no'=>'required',
        //     'Class_code' => 'required',
        //     'Fixed_asset_id'=>'required',
        //     'status' => 'required',
        //     'asset_type'=> 'required',
        //     'asset_description' => 'required',
        //     'asset_models' => 'required',
        //     'asset_vendor' => 'required',
        //     'asset_manufacturing' => 'required',
        //     'department_code' => 'required',
        //     'location' => 'required',
        //     'quantity' => 'required|integer',
        //     'purchase_date' => 'required|date',
        //     'purchase_cost' => 'required',
        //     'Rate_of_def_c_act' => 'required',
        //     'Rate_of_def_it_act' => 'required',
        //     'account_number' => 'required',
        //     'life' => 'required',
        //     // 'current_year_depreciation' => 'required',
        //     // 'accumulated_depreciation' => 'required',
        //     'invoice' => 'file|mimes:pdf,doc,docx',
        // ]);


        $fileName = null;
        if ($request->hasFile('invoice')) {
            $fileName = time() . '_' . $request->file('invoice')->getClientOriginalName();
            $request->file('invoice')->move(public_path('uploads'), $fileName);
        }

        $asset = new Asset();
        $asset->Fixed_asset_no = $request->Fixed_asset_no;
        $asset->Class_code = $request->Class_code;
        $asset->asset_type = $request->asset_type;
        $asset->asset_description = $request->asset_description;
        $asset->asset_vendor = $request->asset_vendor;
        $asset->location = $request->location;
        $asset->quantity = $request->quantity;
        $asset->purchase_date = $request->purchase_date;
        $asset->purchase_cost = $request->purchase_cost;
        $asset->invoice = $fileName;

        if ($asset->save()) {
            return redirect('/asset')->with(['message' => 'success']);
        } else {
            return redirect('/add_asset')->with(['message' => 'error']);
        }
    }
    public function editAsset($id)
    {
        $Asset = Asset::where('id', $id)->first();
        return view('edit.edit-asset')->with(['asset' => $Asset]);
    }

    public function updateAsset(Request $request)
    {
        $validatedData = $request->validate([
            'Fixed_asset_no'=>'required',
            'Class_code' => 'required',
            'Fixed_asset_id'=>'required',
            'status' => 'required',
            'asset_type'=> 'required',
            'asset_description' => 'required',
            'asset_models' => 'required',
            'asset_vendor' => 'required',
            'asset_manufacturing' => 'required',
            'department_code' => 'required',
            'location' => 'required',
            'quantity' => 'required|integer',
            'purchase_date' => 'required|date',
            'purchase_cost' => 'required',
            'Rate_of_def_c_act' => 'required|date',
            'Rate_of_def_it_act' => 'required',
            'account_number' => 'required',
            'life' => 'required',
            // 'current_year_depreciation' => 'required',
            // 'accumulated_depreciation' => 'required',
            'invoice' => 'file|mimes:pdf,doc,docx',
        ]);


        $asset = Asset::find($request->hid);

        if (!$asset) {
            return redirect()->back()->with(['message' => 'error', 'alert' => 'Asset not found']);
        }

        $asset->Fixed_asset_no = $request->Fixed_asset_no;
        $asset->Class_code = $request->Class_code;
        $asset->asset_type = $request->asset_type;
        $asset->asset_description = $request->asset_description;
        $asset->asset_vendor = $request->asset_vendor;
        $asset->location = $request->location;
        $asset->quantity = $request->quantity;
        $asset->purchase_date = $request->purchase_date;
        $asset->purchase_cost = $request->purchase_cost;
        if ($request->hasFile('invoice')) {
            if ($asset->invoice) {
                unlink(public_path('uploads/' . $asset->invoice));
            }

            $fileName = time() . '_' . $request->file('invoice')->getClientOriginalName();
            $request->file('invoice')->move(public_path('uploads'), $fileName);

            $asset->invoice = $fileName;
        }
        $asset->save();

        return redirect('/asset')->with(['message' => 'success', 'alert' => 'Asset updated successfully']);
    }

    public function viewAsset($id)
    {
        $Asset = Asset::where('id', $id)->first();
        return view('view.view-asset')->with(['asset' => $Asset]);
    }


}
