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
        $class = ClassRoom::get();
        return view('classroom', ['classList' => $class]);
    }

    public function show($id)
    {
        $class = ClassRoom::with(['students', 'homeroomTeacher'])
            ->findOrFail($id);
        return view('class-detail', ['class' => $class]);
    }
}
