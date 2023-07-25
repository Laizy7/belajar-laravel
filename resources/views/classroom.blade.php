@extends('layouts.main')

@section('title', 'Class')

@section('content')
<h1>Ini halaman Class</h1>
<h3>Class List</h3>

<table class="table">
    <thead>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Students</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($classList as $c)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$c->name}}</td>
            <td>
                @foreach ($c->students as $student)
                {{$student->name}} <br>
                @endforeach
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

@endsection