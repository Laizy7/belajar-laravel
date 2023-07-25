@extends('layouts.main')

@section('title', 'Students')

@section('content')
<h1>Ini halaman Student</h1>
<h3>Student List</h3>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Gender</th>
            <th>NIS</th>
            <th>Class</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($studentList as $s)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$s->name}}</td>
            <td>{{$s->gender}}</td>
            <td>{{$s->nis}}</td>
            <td>{{$s->class['name']}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection