<%@ page isELIgnored ="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Car Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>


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

<form action="send" method = "post">

<div class="container mt-5">
    <div class="card">
    <center>  <h2 class="card-header" >CAR DETAILS</h2></center>
      <div class="card-body">
      <div class="mb-3">

      <span style ="color : red;">
      <c:forEach items ="${error}" var="objectError">
      ${objectError.defaultMessage}<br>
      </c:forEach>
      </span>

      ${dto}



            <label for="name" class="form-label">Car Name </label>
            <input type="text" value="${dto.carname}" id="carname" name="carname" placeholder="Enter your carname" class="form-control" >
            </div>


      <div class="mb-3 ">
      <label for="test_drive">Fuel type</label><br>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="fueltype" id="petrol">
        <label class="form-check-label" for="petrol">
         Petrol
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="fueltype" id="diesel" >
        <label class="form-check-label" for="diesel">
          diesel
        </label>
      </div>
      </div>

      <div class="mb-3 ">
      <label class="form-check-label" for="purchase">
        Car Color
        </label>
      <select class="form-select" aria-label="Default select example" name="carcolor">
        <option selected disabled>select Car color</option>
        <option value="Red">Red</option>
        <option value="White">White</option>
        <option value="Silver">Silver</option>
         <option value="Black">Black</option>

      </select>
      </div>

      <div class="mb-3 form-check">
                 <button type="button" id="sendbtn" class="btn btn-primary"> Send </button>
                 </div>
          </div>
      </div>


</form>
</body>
</html>