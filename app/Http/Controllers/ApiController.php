<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Company_packages;
use App\Models\Packages;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class ApiController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            "site_url" => ['required', 'url'],
            "name" => ['required'],
            "lastname" => ['required'],
            "company_name" => ['required', 'min:3'],
            "email" => ['required', 'email'],
            "password" => ['required', 'min:5']
        ]);

        $resp = [];
        $currentCompany = Company::where('email', $request->email)->where('company_name', $request->company_name)->first();
        if (!empty($currentCompany)) {
            $resp['status'] = 'success';
            $resp['token'] = $currentCompany->company_token;
            $resp['company_id'] = $currentCompany->id;
        } else {
            $company = new Company();
            $company->site_url = $request->site_url;
            $company->name = $request->name;
            $company->lastname = $request->lastname;
            $company->company_name = $request->company_name;
            $company->email = $request->email;
            $company->password = Hash::make($request->password);
            $company->company_token = Str::random(50);
            $company->save();
            $resp['status'] = 'success';
            $resp['token'] = $company->company_token;
            $resp['company_id'] = $company->id;
        }

        return $resp;
    }

    public function package(Request $request)
    {
        $request->validate([
            "company_id" => ['required'],
            "package_id" => ['required'],
        ]);

        $resp = [];
        $company = Company::find($request->company_id);
        if (!empty($company)) {
            $package = Packages::find($request->package_id);
            if (!empty($package)) {
                $startDate = Carbon::now()->format('Y-m-d');
                if ($package->lifetime == 'Monthly') {
                    $endDate = Carbon::now()->addDays(30)->format('Y-m-d');
                } else {
                    $endDate = Carbon::now()->addDays(365)->format('Y-m-d');
                }
                $companyPackage = new Company_packages();
                $companyPackage->company_id = $company->id;
                $companyPackage->package_id = $package->id;
                $companyPackage->start_date = $startDate;
                $companyPackage->end_date = $endDate;
                $companyPackage->status = 1;
                $companyPackage->save();
                $resp['status'] = 'success';
                $resp['start_date'] = $startDate;
                $resp['end_date'] = $endDate;
                $resp['package'] = $package->toArray();
            } else {
                $resp['status'] = 'error';
                $resp['message'] = 'Package not found.';
            }
        } else {
            $resp['status'] = 'error';
            $resp['message'] = 'Company not found.';
        }
        return $resp;
    }

    public function check($token)
    {
        $company = Company::whereCompany_token($token)->first();
        if (empty($company)) {
            return ['status' => 'error', 'message' => 'Company is not found'];
        }

        $resp = [];
        $resp['company'] = $company;
        $resp['packages'] = [];
        $packages = Company_packages::where('company_id', $company->id)->get();

        foreach ($packages as $package) {
            array_push($resp['packages'], $package->getPackage());
        }
        return $resp;
    }
}
