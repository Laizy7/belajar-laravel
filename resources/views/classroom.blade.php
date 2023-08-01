@extends('layouts.main')

@section('title', 'Class')

@section('content')
<h1>Ini halaman Class</h1>

<div class="my-5">
    <a href="" class="btn btn-primary">Add Data</a>
</div>

<h3>Class List</h3>

<table class="table">
    <thead>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Action</th>
            {{-- <th>Students</th>
            <th>Homeroom Teacher</th> --}}
        </tr>
    </thead>
    <tbody>
        @foreach ($classList as $data)
        <td>{{$loop->iteration}}</td>
        <td>{{$data->name}}</td>
        <td><a href="/class/{{$data->id}}">Detail</a></td>
        {{-- <td>
            @foreach ($data->students as $student)
            {{$student->name}} <br>
            @endforeach
        </td>
        <td>{{$data->homeroomTeacher['name']}}</td> --}}
        </tr>
        @endforeach
    </tbody>
</table>

@endsection