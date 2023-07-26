@extends('layouts.main')

@section('title', 'Students')

@section('content')
<h1>Ini halaman Student</h1>

<div class="my-5">
    <a href="students-add" class="btn btn-primary">Add Data</a>
</div>

<h3>Student List</h3>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Gender</th>
            <th>NIS</th>
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
            <td><a href="/students/{{$student->id}}">Detail</a></td>
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
@endsection