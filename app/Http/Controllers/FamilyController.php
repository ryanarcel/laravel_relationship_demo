<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App\Models\Family;
use App\Models\Member;

class FamilyController extends Controller
{
    public function show(){
        $families = Family::all();
        return view("home")->with("families", $families);
    }
    
    public function saveFamily(Request $request){
        $family = new Family;

        $family->lastname = $request->familyname;
        $family->save();

        return redirect()->back();
    }

    public function saveMember(Request $request){
            
        foreach($request->members as $member){
            $mem = Member::create([
                "firstname" => $member,
                "family_id" => $request->family
            ]);
        }
        return redirect()->back();
    }

    public function fetchData(){

        $member = Member::find(24);

        return $member->family;
    }




}
