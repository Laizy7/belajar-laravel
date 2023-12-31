@extends('layouts.main')

@section('title', 'Students Detail')

@section('content')

<h2>Detail data siswa {{$student->name}}</h2>

<div class="my-3 d-flex justify-content-center">
    @if ($student->image != '')
    <img src="{{asset('storage/image/'.$student->image)}}" alt="" width="200">
    @else
    <img src="{{asset('default/def.jpg')}}" alt="" width="200">
    @endif
</div>

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