@extends('layout')

@section('content')
    @if(count($contactsData))
        <div class="row">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Phone</th>
                </tr>
              </thead>
              <tbody>
              @foreach($contactsData as $contactData)
                <tr>
                  <th scope="row">{{$contactData->id}}</th>
                  <td>{{$contactData->name}}</td>
                  <td>{{$contactData->email}}</td>
                  <td>{{$contactData->phone}}</td>
                </tr>
              @endforeach
              </tbody>
            </table>
            {{$contactsData->appends(['s'=>request()->s])->links()}}
        </div>
    @else <p>Контактов не найдено</p>
    @endif
@endsection
