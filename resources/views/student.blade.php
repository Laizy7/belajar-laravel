@extends('layouts.main')

@section('title', 'Students')

@section('content')
<h1>Ini halaman Student</h1>
</h3>Student List<h3>
    <ol>
        @foreach ($studentList as $s)
        <li>{{$s->name}} | {{$s->gender}} | {{$s->nis}}</li>
        @endforeach
    </ol>
    @endsection