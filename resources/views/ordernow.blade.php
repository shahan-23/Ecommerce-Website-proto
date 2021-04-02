@extends('master')
@section("content")
<div class="custom-product">
    <div class="col-sm-10">
    <table class="table">
    
    <tbody>
      <tr>
        <td>Amount</td>
        <td>$ {{$total}}</td>
      </tr>
      <tr>
        <td>Delivery Charge</td>
        <td>$ 10</td>
      </tr>
      <tr>
        <td>Total Amount</td>
        <td>$ {{$total + 10}}</td>
      </tr>
    </tbody>
  </table>

  <div>
  
  <form action="/orderplace" method="POST">
  @csrf
  <div class="form-group">
    <textarea name="address" placeholder="Enter Address" class="form-control" ></textarea>
  </div>
  <div class="form-group">
    <label for="pwd">Payment Method:</label> <br> <br>
    <input type="radio" value="cash" name="payment"> <span>Online Payment</span> <br> <br>
    <input type="radio" value="cash" name="payment"> <span>Credit/Debit Card Payment</span> <br> <br>
    <input type="radio" value="cash" name="payment"> <span>Cash on Delivery</span> <br> <br>
  </div>
  <button type="submit" class="btn btn-default">Confirm Order</button>
</form>

  </div>

    </div>
 

</div>
@endsection