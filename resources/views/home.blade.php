@extends('layouts.main')

@section('title', 'Home')

@section('content')
<h1>This is {{$name}}'s Home as {{$role}}!</h1>
@endsection

{{-- @if ($role == 'admin')
<a href="">Ke halaman Admin</a>
@elseif ($role == 'staff')
<a href="">Ke halaman Gudang</a>
@else
<a href="">Ke halaman Lain</a>
@endif --}}

{{-- @switch($role)
@case($role == 'admin')
<a href="">Ke halaman Admin</a>
@break

@case($role == 'staff')
<a href="">Ke halaman Gudang</a>
@break

@default
<a href="">Ke halaman Lain</a>
@endswitch --}}