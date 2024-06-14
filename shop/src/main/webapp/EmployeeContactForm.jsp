<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Leave Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


<script>
function validateForm() {
  let isValid = true;

  // Reset previous error messages
  document.getElementById("employeeNameError").innerHTML = "";
  document.getElementById("employeeIdError").innerHTML = "";
  document.getElementById("departmentError").innerHTML = "";
  document.getElementById("mobileError").innerHTML = "";
  document.getElementById("genderError").innerHTML = "";
  document.getElementById("addressError").innerHTML = "";
  document.getElementById("agreeError").innerHTML = "";

  const name = document.getElementById("employeeName").value.trim();
  const employeeId = document.getElementById("employeeId").value.trim();
  const department = document.getElementById("department").value;
  const mobile = document.getElementById("mobile").value.trim();
  const genderMale = document.getElementById("genderMale").checked;
  const genderFemale = document.getElementById("genderFemale").checked;
  const address = document.getElementById("address").value.trim();
  const agree = document.getElementById("agree").checked;

  if (name === "") {
    document.getElementById("employeeNameError").innerText = "Employee Name is required.";
    isValid = false;
  }

  if (employeeId === "") {
    document.getElementById("employeeIdError").innerText = "Employee Id is required.";
    isValid = false;
  } else if (isNaN(employeeId) || employeeId <= 0) {
    document.getElementById("employeeIdError").innerText = "Employee Id must be a positive number.";
    isValid = false;
  }

  if (department === "0") {
    document.getElementById("departmentError").innerText = "Please select your department.";
    isValid = false;
  }

  if (mobile === "") {
    document.getElementById("mobileError").innerText = "Mobile number is required.";
    isValid = false;
  } else if (isNaN(mobile) || mobile.length !== 10) {
    document.getElementById("mobileError").innerText = "Mobile number must be a 10-digit number.";
    isValid = false;
  }

  if (!genderMale && !genderFemale) {
    document.getElementById("genderError").innerText = "Please select your gender.";
    isValid = false;
  }

  if (address === "") {
    document.getElementById("addressError").innerText = "Address is required.";
    isValid = false;
  }

  if (!agree) {
    document.getElementById("agreeError").innerText = "You must agree to the terms.";
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
<form id="contactForm" action="contact" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
  <div class="card">
    <div class="card-header">
      <center><h2>Employee Contact Form</h2></center>
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
        <label for="employeeName" class="form-label">Employee Name</label>
        <input type="text" class="form-control" id="employeeName" value="${dto.employeeName}" name="employeeName" aria-describedby="employeeNameHelp">
        <div id="employeeNameError" style="color:red;"></div>
      </div>

      <div class="mb-2">
        <label for="employeeId" class="form-label">Employee Id</label>
        <input type="number" class="form-control" id="employeeId" value="${dto.employeeId}" name="employeeId" aria-describedby="employeeIdHelp">
        <div id="employeeIdError" style="color:red;"></div>
      </div>

      <div class="mb-2">
        <label for="department" class="form-label">Department</label>
        <select class="form-select form-select-lg mb-2" id="department" name="department">
          <option selected ${dto.department == null ? 'selected' : ''} value="0">Select your department</option>
          <option ${dto.department eq 'Production' ? 'selected' : ''} value="Production">Production</option>
          <option ${dto.department eq 'PED' ? 'selected' : ''} value="PED">PED</option>
          <option ${dto.department eq 'Quality' ? 'selected' : ''} value="Quality">Quality</option>
          <option ${dto.department eq 'R$D' ? 'selected' : ''} value="R$D">R$D</option>
          <option ${dto.department eq 'Sales' ? 'selected' : ''} value="Sales">Sales</option>
        </select>
        <div id="departmentError" style="color:red;"></div>
      </div>

      <div class="mb-2">
        <label for="mobile" class="form-label">Mobile</label>
        <input type="number" class="form-control" id="mobile" value="${dto.mobile}" name="mobile" aria-describedby="mobileHelp">
        <div id="mobileError" style="color:red;"></div>
      </div>

      <label for="gender" class="form-label">Gender</label>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="genderMale" name="gender" value="male" ${dto.gender eq 'male' ? "checked" : ''}>
        <label class="form-check-label" for="genderMale">Male</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="genderFemale" name="gender" value="female" ${dto.gender eq 'female' ? "checked" : ''}>
        <label class="form-check-label" for="genderFemale">Female</label>
      </div>
      <div id="genderError" style="color:red;"></div>

      <div class="mb-2">
        <label for="address" class="form-label">Address</label>
        <textarea class="form-control" placeholder="Enter your permanent address here" id="address" name="address">${dto.address}</textarea>
        <div id="addressError" style="color:red;"></div>
      </div>

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
