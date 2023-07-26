@extends('layouts.main')

@section('title', 'Teachers')

@section('content')
<h1>Ini halaman Teacher</h1>
<h3>Teacher List</h3>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($teacherList as $teach)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$teach->name}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection