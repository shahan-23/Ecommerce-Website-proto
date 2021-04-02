@extends('master')
@section("content")
<div class="custom-product">
 
<div class="col-sm-4">
    </div>
    <div class="col-sm-4">
    
        <div class="trending-wrapper">
        <h1><center>Result for products</center></h1> <br> <br>

        @foreach($products as $item)

        <div class="searched-item">
        <a href="detail/{{$item['id']}}">
            <img class="trending-image" src="{{$item['gallery']}}">
            <div class="">
                <h2><center>{{$item['name']}}</center></h2>
                <h5><center>{{$item['description']}}</center></h5>
            </div>
            </a>
            </div>

            @endforeach


        </div>

    </div> 

</div> <br> <br>
@endsection