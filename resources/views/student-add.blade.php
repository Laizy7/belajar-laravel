@extends('layouts.main')

@section('title', 'Add New Students')

@section('content')
<div class="mt-5 col-8 m-auto">
    <form action="student" method="post">
        @csrf
        <div class="mb-3">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" required>
        </div>
        <div class="mb-3">
            <label for="gender">Gender</label>
            <select name="gender" id="gender" class="form-control" required>
                <option value="">Select One</option>
                <option value="L">Laki-Laki</option>
                <option value="P">Perempuan</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="nis">NIS</label>
            <input type="text" class="form-control" id="nis" name="nis" required>
        </div>
        <div class="mb-3">
            <label for="class">Class</label>
            <select name="class_id" id="class" class="form-control" required>
                <option value="">Select One</option>
                @foreach ($class as $item)
                <option value="{{$item->id}}">{{$item->name}}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <button type="submit" class="btn btn-success">Save</button>
        </div>
    </form>
</div>
@endsection