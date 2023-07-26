@extends('layouts.main')

@section('title', 'Extracurricural Detail')

@section('content')

<h2>Detail Excul {{$excul->name}}</h2>

<div>
    <h2>List Peserta</h2>
    <ol>
        @foreach ($excul->students as $item)
        <li>{{$item->name}}</li>
        @endforeach
    </ol>
</div>


@endsection