<?php

namespace App\Http\Controllers;

class StudentController extends Controller
{
    public function index()
    {
        // $student = Student::all();
        // return view('student', ['studentList' => $student]);

        // == Query Builder ==

        /* // get
        $student = DB::table('students')->get();
        dd($student); */

        /* // create
        DB::table('students')->insert([
        'name' => 'qq',
        'gender' => 'P',
        'nis' => '03891',
        'class_id' => 2,
        ]); */

        /* // update
        DB::table('students')->where('id', 25)->update([
        'name' => 'qq kedua',
        'class_id' => 1,
        'updated_at' => Carbon::now(),
        ]); */

        /* // delete
        DB::table('students')->where('id', 26)->delete(); */

        // == Eloquent ==

        /* // get
        $student = Student::all();
        dd($student); */

        /* // create
        Student::create([
        'name' => 'eloq',
        'gender' => 'L',
        'nis' => '07143',
        'class_id' => 3,
        ]); */

        /* // update
        Student::find(25)->update([
        'name' => 'qq upd eloq',
        'class_id' => 3,
        'updated_at' => Carbon::now(),
        ]); */

        /* // delete
        Student::find(25)->delete(); */

        // == Materi Collection ==

        /* $nilai = [9, 4, 5, 7, 2, 8, 9, 9, 3, 1, 3, 2, 7];
        // Average
        $nilaiRataRata = collect($nilai)->avg();
        // dd($nilaiRataRata);

        // Contains
        $cekNilai = collect($nilai)->contains(7);
        $cekNilai2 = collect($nilai)->contains(function ($value) {
        return $value > 9;
        });
        dd($cekNilai2); */

        /* // Method diff - mencari yang tidak ada dari pembandingnya
        $tokoA = ['ayam', 'ikan', 'bebek', 'lele', 'sapi', 'bakso'];
        $tokoB = ['burger', 'mie', 'pizza', 'matcha', 'bakso', 'ayam'];

        $menuTokoA = collect($tokoA)->diff($tokoB);
        $menuTokoB = collect($tokoB)->diff($tokoA);
        dd($menuTokoB); */

        // Method filter
        /* $nilaiDua = [9, 4, 5, 7, 2, 8, 9, 9, 3, 1, 3, 2, 7];
        $filtNilai = collect($nilaiDua)->filter(function ($value) {
        return $value < 7;
        })->all();
        dd($filtNilai); */

        // Method pluck
        /* $biodata = [
        ['nama' => 'aa', 'umur' => 1],
        ['nama' => 'bb', 'umur' => 2],
        ['nama' => 'cc', 'umur' => 3],
        ['nama' => 'dd', 'umur' => 4],
        ];

        $pluckData = collect($biodata)->pluck('nama')->all();
        dd($pluckData); */

        $nilaiMap = [9, 4, 5, 7, 2, 8, 9, 9, 3, 1, 3, 2, 7, 4, 6, 9, 8, 3];

        $hasilMap = collect($nilaiMap)->map(function ($value) {
            return $value * 2;
        })->all();
        dd($hasilMap);
    }
}
