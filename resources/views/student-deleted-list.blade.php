@extends('layouts.main')

@section('title', 'Students Deleted List')

@section('content')
<h1>Ini halaman Student yang di soft delete</h1>

<div class="my-5">
    <a href="/students" class="btn btn-primary">Back</a>
</div>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Gender</th>
            <th>NIS</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($student as $data)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$data->name}}</td>
            <td>{{$data->gender}}</td>
            <td>{{$data->nis}}</td>
            <td>
                <a href="/students-restore/{{$data->id}}">Restore</a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection