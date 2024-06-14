<%@ page  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Shop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function validateForm() {
  let isValid = true;

  // Reset previous error messages
  document.getElementById("nameError").innerHTML = "";
  document.getElementById("locationError").innerHTML = "";
  document.getElementById("typesError").innerHTML = "";
  document.getElementById("mTypeError").innerHTML = "";
  document.getElementById("areaError").innerHTML = "";
  document.getElementById("checkError").innerHTML = "";

  const name = document.getElementById("name").value.trim();
  const location = document.getElementById("location").value.trim();
  const types = document.querySelector('select[name="types"]').value;
  const mType = document.querySelector('input[name="Mtype"]:checked');
  const area = document.getElementById("floatingTextarea").value.trim();
  const check = document.getElementById("flexCheckDefault").checked;

  if (name === "") {
    document.getElementById("nameError").innerText = "Shop name is required.";
    isValid = false;
  }

  if (location === "") {
    document.getElementById("locationError").innerText = "Location is required.";
    isValid = false;
  }

  if (types === "null") {
    document.getElementById("typesError").innerText = "Please select a type.";
    isValid = false;
  }

  if (!mType) {
    document.getElementById("mTypeError").innerText = "Please select a shop type.";
    isValid = false;
  }

  if (area === "") {
    document.getElementById("areaError").innerText = "Area is required.";
    isValid = false;
  }

  if (!check) {
    document.getElementById("checkError").innerText = "You must confirm to proceed.";
    isValid = false;
  }

  return isValid; // Allow form submission if no validation errors
}
</script>
</head>
<nav class="p-3 mb-2 bg-dark text-white">
  <div class="container-fluid">
    <!-- Add your logo here -->
    <a class="navbar-brand" href="#">
      <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70">
    </a>
    <!-- End of logo -->
    <a class="navbar-brand" style="color:white;" href="index.jsp">Home</a>
  </div>
</nav>
<body>
<form id="shopForm" action="save" method="post" onsubmit="return validateForm()">
  <div class="container mt-5">
    <div class="card">
      <div class="card-header">
        <center>Shop Form</center>
      </div>
      <span style="color:red;">
        <c:forEach items="${errors}" var="objectError">
          ${objectError.defaultMessage}</br>
        </c:forEach>
      </span>
      ${dto}
      <div class="card-body">
        <div class="mb-2">
          <label for="name" class="form-label">Shop Name</label>
          <input type="text" class="form-control" id="name" value="${dto.name}" name="name" aria-describedby="nameHelp">
          <div id="nameError" style="color:red;"></div>
        </div>

        <div class="mb-2">
          <label for="location" class="form-label">Location</label>
          <input type="text" class="form-control" id="location" name="location" value="${dto.location}" aria-describedby="locationHelp">
          <div id="locationError" style="color:red;"></div>
        </div>

        <div class="mb-2">
          <label for="types" class="form-label">Shop Type</label>
          <select class="form-select form-select-lg mb-2" id="types" name="types">
            <option selected value="null">Select Type</option>
            <option value="Medical Shop">Medical Shop</option>
            <option value="cloth shop">Cloth Shop</option>
            <option value="Vegetables shop">Vegetables Shop</option>
            <option value="Tea shop">Tea Shop</option>
          </select>
          <div id="typesError" style="color:red;"></div>
        </div>

        <div>
          <label class="form-label">Shop Mode</label><br>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" id="mTypeOnline" name="Mtype" value="online">
            <label class="form-check-label" for="mTypeOnline">Online Shop</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" id="mTypeOffline" name="Mtype" value="offline">
            <label class="form-check-label" for="mTypeOffline">Offline Shop</label>
          </div>
          <div id="mTypeError" style="color:red;"></div>
        </div>

        <div class="mb-2">
          <label for="floatingTextarea" class="form-label">Area</label>
          <div class="form-floating">
            <textarea class="form-control" name="area" id="floatingTextarea"></textarea>
            <div id="areaError" style="color:red;"></div>
          </div>
        </div>

        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" name="check" id="flexCheckDefault">
          <label class="form-check-label" for="flexCheckDefault">Confirm</label>
          <div id="checkError" style="color:red;"></div>
        </div>

        <div class="form-group">
          <button type="submit" id="sendButton" class="btn btn-primary">Submit</button>
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>
