@extends('layouts.main')

@section('title', 'Extracurricular')

@section('content')
<h1>Ini halaman Excul</h1>
<h3>Excul List</h3>

<table class="table">
    <thead>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Anggota</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($exculList as $data)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$data->name}}</td>
            <td>
                @foreach ($data->students as $item)
                {{$item->name}} <br>
                @endforeach</td>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection