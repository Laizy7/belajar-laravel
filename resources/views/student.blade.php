@extends('layouts.main')

@section('title', 'Students')

@section('content')
<h1>Ini halaman Student</h1>

<div class="my-5 d-flex justify-content-between">
    <a href="students-add" class="btn btn-primary">Add Data</a>
    <a href="students-deleted" class="btn btn-info">Show Deleted Data</a>
</div>

@if(Session::has('status'))
<div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
@endif

<h3>Student List</h3>

<div class="my-3 col-6">
    <form action="" method="get">
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="keyword" placeholder="Find...">
            <button class="btn btn-primary input-group-text">Search</button>
        </div>
    </form>
</div>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Gender</th>
            <th>NIS</th>
            <th>Class</th>
            <th>Action</th>
            {{-- <th>Class</th>
            <th>Excul</th>
            <th>Homeroom Teacher</th> --}}
        </tr>
    </thead>

    <tbody>
        @foreach ($studentList as $student)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$student->name}}</td>
            <td>{{$student->gender}}</td>
            <td>{{$student->nis}}</td>
            <td>{{$student->class['name']}}</td>
            <td>
                @if (Auth::user()->role_id == 3)
                -
                @else
                <a href="/students/{{$student->id}}">Detail</a>
                <a href="/students-edit/{{$student->id}}">Edit</a>
                @endif

                @if (Auth::user()->role_id == 1)
                <a href="/students-delete/{{$student->id}}">Delete</a>
                @endif
            </td>
            {{-- <td>{{$student->class['name']}}</td>
            <td>
                @foreach ($student->extracurriculars as $excul)
                {{$excul->name}} <br>
                @endforeach
            </td>
            <td>{{$student->class->homeroomTeacher['name']}}</td> --}}
        </tr>
        @endforeach
    </tbody>
</table>

<div class="my-5">
    {{$studentList->withQueryString()->links()}}
</div>

@endsection