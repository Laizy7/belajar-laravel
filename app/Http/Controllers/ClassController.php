<?php

namespace App\Http\Controllers;

use App\Models\ClassRoom;

class ClassController extends Controller
{
    public function index()
    {
        $class = ClassRoom::with('students')->get();
        return view('classroom', ['classList' => $class]);
    }
}
