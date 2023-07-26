@extends('layouts.main')

@section('title', 'Students Detail')

@section('content')

<h2>Detail data siswa {{$student->name}}</h2>

<table class="table table-bordered">
    <tr>
        <th>NIS</th>
        <th>Gender</th>
        <th>Class</th>
        <th>Homeroom Teacher</th>
    </tr>
    <tr>
        <td>{{$student->nis}}</td>
        <td>
            @if ($student->gender == 'P')
            Perempuan
            @else
            Laki-Laki
            @endif
        </td>
        <td>{{$student->class['name']}}</td>
        <td>{{$student->class->homeroomTeacher['name']}}</td>
    </tr>
</table>

<div>
    <h3>Extracurriculars</h3>
    <ol>
        @foreach ($student->extracurriculars as $item)
        <li>{{$item->name}}</li>
        @endforeach
    </ol>
</div>

@endsection