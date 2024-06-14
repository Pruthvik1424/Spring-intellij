<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Mall Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function validateForm() {
  let isValid = true;

  // Reset previous error messages
  document.getElementById("mallNameError").innerHTML = "";
  document.getElementById("locationError").innerHTML = "";
  document.getElementById("stateError").innerHTML = "";
  document.getElementById("pincodeError").innerHTML = "";
  document.getElementById("mallTypeError").innerHTML = "";
  document.getElementById("agreeError").innerHTML = "";

  const mallName = document.getElementById("mallName").value.trim();
  const location = document.getElementById("location").value.trim();
  const state = document.getElementById("state").value;
  const pincode = document.getElementById("pincode").value.trim();
  const mallTypeRegional = document.getElementById("type").checked;
  const mallTypeSuperRegional = document.querySelector('input[name="mallType"]:checked');
  const agree = document.getElementById("agree").checked;

  if (mallName === "") {
    document.getElementById("mallNameError").innerText = "Mall Name is required.";
    isValid = false;
  }

  if (location === "") {
    document.getElementById("locationError").innerText = "Location is required.";
    isValid = false;
  }

  if (state === "null") {
    document.getElementById("stateError").innerText = "Please select a state.";
    isValid = false;
  }

  if (pincode === "") {
    document.getElementById("pincodeError").innerText = "Pincode is required.";
    isValid = false;
  } else if (isNaN(pincode) || pincode.length !== 6) {
    document.getElementById("pincodeError").innerText = "Pincode must be a 6-digit number.";
    isValid = false;
  }

  if (!mallTypeSuperRegional) {
    document.getElementById("mallTypeError").innerText = "Please select a mall type.";
    isValid = false;
  }

  if (!agree) {
    document.getElementById("agreeError").innerText = "You must agree to proceed.";
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
<form id="mallForm" action="mall" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
<div class="card">
  <div class="card-header">
    <center><h2>Mall Details</h2></center>
  </div>
  <span style="color:red;">
  <c:forEach items="${errors}" var="objectError">
    ${objectError.defaultMessage}</br>
  </c:forEach>
  </span>
  ${dto}

  <div class="card-body">
    <div class="mb-2">
      <strong style="color:green;">${name}</strong><br>
      <label for="mallName" class="form-label">Mall Name</label>
      <input type="text" class="form-control" id="mallName" value="${dto.mallName}" name="mallName" aria-describedby="mallNameHelp">
      <div id="mallNameError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="location" class="form-label">Location</label>
      <input type="text" class="form-control" id="location" value="${dto.location}" name="location" aria-describedby="locationHelp">
      <div id="locationError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="state" class="form-label">State</label>
      <select class="form-select form-select-lg mb-2" id="state" name="state">
        <option selected ${dto.state == null ? 'selected' : ''} value=null disabled>Select State</option>
        <option ${dto.state eq 'Karnataka' ? 'selected' : ''} value="Karnataka">Karnataka</option>
        <option ${dto.state eq 'Hydrabad' ? 'selected' : ''} value="Hydrabad">Hydrabad</option>
        <option ${dto.state eq 'Tamilnadu' ? 'selected' : ''} value="Tamilnadu">Tamilnadu</option>
        <option ${dto.state eq 'Delhi' ? 'selected' : ''} value="Delhi">Delhi</option>
        <option ${dto.state eq 'Kolkata' ? 'selected' : ''} value="Kolkata">Kolkata</option>
      </select>
      <div id="stateError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="pincode" class="form-label">Pincode</label>
      <input type="number" class="form-control" id="pincode" value="${dto.pincode}" name="pincode" aria-describedby="pincodeHelp">
      <div id="pincodeError" style="color:red;"></div>
    </div>

    <label for="type" class="form-label">Mall type</label>
    <div class="form-check">
      <input class="form-check-input" type="radio" id="regionalMalls" name="mallType" value="regionalMalls" ${dto.mallType eq 'regionalMalls' ? "checked" : ''}>
      <label class="form-check-label" for="regionalMalls">Regional Mall</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" id="superRegionalMalls" name="mallType" value="superRegionalMalls" ${dto.mallType eq 'superRegionalMalls' ? "checked" : ''}>
      <label class="form-check-label" for="superRegionalMalls">Super Regional Mall</label>
    </div>
    <div id="mallTypeError" style="color:red;"></div>

    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="agree" ${dto.agree ? 'checked' :''} name="agree" id="agree">
      <label class="form-check-label" for="agree">Agree</label>
      <div id="agreeError" style="color:red;"></div>
    </div>

    <div class="form-group">
      <center><button type="submit" id="sendButton" class="btn btn-primary">Submit</button></center>
    </div>
  </div>
</div>
</div>
</form>
</body>
</html>
