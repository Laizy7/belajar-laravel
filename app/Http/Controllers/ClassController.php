<?php

namespace App\Http\Controllers;

use App\Models\ClassRoom;

class ClassController extends Controller
{
    public function index()
    {
        $class = ClassRoom::all(); //Select * from ClassRoom
        return view('classroom', ['classList' => $class]);
    }
}
