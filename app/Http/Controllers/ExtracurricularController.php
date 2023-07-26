<?php

namespace App\Http\Controllers;

use App\Models\Extracurricular;

class ExtracurricularController extends Controller
{
    public function index()
    {
        $excul = Extracurricular::get();
        return view('extracurricular', ['exculList' => $excul]);
    }

    public function show($id)
    {
        $excul = Extracurricular::with(['students'])->findOrFail($id);
        return view('extracurricular-detail', ['excul' => $excul]);
    }
}
