@extends('layouts.main')

@section('title', 'Teacher Detail')

@section('content')

<h2>Detail Teacher {{$teacher->name}}</h2>

<div>
    <h3>Class :
        @if ($teacher->class)
        {{$teacher->class['name']}}
        @else
        -
        @endif
    </h3>
</div>

<div>
    <h3>List Murid</h3>
    @if ($teacher->class)
    <ol>
        @foreach ($teacher->class->students as $item)
        <li>{{$item->name}}</li>
        @endforeach
    </ol>
    @else
    -
    @endif
</div>

@endsection