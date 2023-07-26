@extends('layouts.main')

@section('title', 'Class Detail')

@section('content')

<h2>Detail Class {{$class->name}}</h2>

<div>
    <h4>Homeroom Teacher : {{$class->homeroomTeacher['name']}}</h4>
</div>

<div>
    <h4>List Students</h4>
    <ol>
        @foreach ($class->students as $item)
        <li>{{$item->name}}</li>
        @endforeach
    </ol>
</div>
{{-- <table class="table table-bordered">
    <tr>
        <th>NIS</th>
        <th>Gender</th>
        <th>Class</th>
        <th>Homeroom Teacher</th>
    </tr>
    <tr>
        <td>{{$student->nis}}</td>
        <td>
            @if ($student->gender == 'P')
            Perempuan
            @else
            Laki-Laki
            @endif
        </td>
        <td>{{$student->class['name']}}</td>
        <td>{{$student->class->homeroomTeacher['name']}}</td>
    </tr>
</table> --}}

@endsection