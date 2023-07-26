<?php

namespace App\Http\Controllers;

use App\Models\ClassRoom;

class ClassController extends Controller
{
    public function index()
    {
        // lazy load
        // $class = ClassRoom::all();

        // eager load
        $class = ClassRoom::with('students', 'homeroomTeacher')->get();
        return view('classroom', ['classList' => $class]);
    }
}
