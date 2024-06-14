<%@ page isELIgnored ="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Car Show Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

<form action="go" method = "post">

    <nav class="navbar navbar-dark bg-dark">
        <!-- Navbar content -->
        <div class="container-fluid">
            <!-- Add your logo here -->
            <a class="navbar-brand" href="#">
                <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70" >
            </a>
            <!-- End of logo -->
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
            </ul>
        </div>
    </nav>

<div class="container mt-5">
    <div class="card">
    <center>  <h2 class="card-header" >CAR BOOKING</h2></center>
      <div class="card-body">
    <span style="color:red;">
       <c:forEach items="${error}" var="objectError">
       ${objectError.defaultMessage}</br>
       </c:forEach>
   ${Car}
   </span>




      <div class="mb-3">
      <label for="name" class="form-label">Name</label>
      <input type="text" id="name" value="${car.brand}" name="name" placeholder="Enter your fullname" class="form-control" >
      <span class="error" style="color:red" id="nameError"></span>
      </div>


          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email id" >
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            <span class="error" style="color:red" id="emailError"></span>
          </div>
          <div class="mb-3">
            <label for="mobile" class="form-label">Mobile</label>
            <input type="number" class="form-control" placeholder="Enter your mobile number" name="mobile" id="mobile">
            <span class="error" style="color:red" id="mobileError"></span>
          </div>


<div class="mb-3 ">
<label for="test_drive">Purpose of Booking</label><br>
<div class="form-check">
  <input class="form-check-input" type="radio" name="purpose" id="textdrive">
  <span class="error" style="color:red" id="purposeError"></span>
  <label class="form-check-label" for="testdrive">
   Test Drive
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="purpose" id="purchase" >
  <span class="error" style="color:red" id="purposeError"></span>
  <label class="form-check-label" for="purchase">
    Purchase
  </label>
</div>
</div>

<div class="mb-3 ">
<label class="form-check-label" for="purchase">
  Car Model
  </label>
<select class="form-select" aria-label="Default select example" name="carModel">
<span class="error" style="color:red" id="carModelError"></span>
  <option selected disabled>select Car Model</option>
  <option value="Mahindra-Thar">Mahindra-Thar</option>
  <option value="Tata Punch">Tata Punch</option>
  <option value="Maruti Wagon R">Maruti Wagon R</option>
    <option value="	Maruti Brezza">	Maruti Brezza</option>
  <option value="Maruti Dzire">Maruti Dzire</option>
  <option value="Maruti Baleno">Maruti Baleno</option>
</select>
</div>

<div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" name="confirm" id="exampleCheck1">
            <span class="error" style="color:red" id="confirmError"></span>
            <label class="form-check-label" for="exampleCheck1">Confirm</label>
            <br>
      </div>
 <div class="form-group">
      <button type="button" id="sendbtn" class="btn btn-primary"> Send </button>
      </div>

    </div>
</div>



</form>





</body>
</html>