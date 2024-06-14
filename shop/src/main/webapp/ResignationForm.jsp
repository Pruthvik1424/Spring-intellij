<%@ page  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Resignation Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function validateForm() {
  let isValid = true;

  // Reset previous error messages
  document.getElementById("fromError").innerHTML = "";
  document.getElementById("toError").innerHTML = "";
  document.getElementById("departmentError").innerHTML = "";
  document.getElementById("emailError").innerHTML = "";
  document.getElementById("reasonError").innerHTML = "";
  document.getElementById("dateError").innerHTML = "";
  document.getElementById("confirmError").innerHTML = "";

  const from = document.getElementById("from").value.trim();
  const to = document.getElementById("to").value.trim();
  const department = document.getElementById("department").value;
  const email = document.getElementById("email").value.trim();
  const reason = document.getElementById("reason").value.trim();
  const date = document.getElementById("date").value;
  const confirm = document.getElementById("confirm").checked;

  if (from === "") {
    document.getElementById("fromError").innerText = "From field is required.";
    isValid = false;
  }

  if (to === "") {
    document.getElementById("toError").innerText = "To field is required.";
    isValid = false;
  }

  if (department === "0") {
    document.getElementById("departmentError").innerText = "Please select a department.";
    isValid = false;
  }

  if (email === "") {
    document.getElementById("emailError").innerText = "Email is required.";
    isValid = false;
  } else if (!validateEmail(email)) {
    document.getElementById("emailError").innerText = "Invalid email format.";
    isValid = false;
  }

  if (reason === "") {
    document.getElementById("reasonError").innerText = "Reason for resignation is required.";
    isValid = false;
  }

  if (date === "") {
    document.getElementById("dateError").innerText = "Date is required.";
    isValid = false;
  }

  if (!confirm) {
    document.getElementById("confirmError").innerText = "You must confirm to proceed.";
    isValid = false;
  }

  return isValid; // Allow form submission if no validation errors
}

function validateEmail(email) {
  const re = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
  return re.test(email);
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
<form id="resignForm" action="resign" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
<div class="card">
  <div class="card-header">
    <center><h2>Resignation Form</h2></center>
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
      <label for="from" class="form-label">From</label>
      <input type="text" class="form-control" id="from" value="${dto.from}" name="from" aria-describedby="fromHelp">
      <div id="fromError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="to" class="form-label">To</label>
      <input type="text" class="form-control" id="to" value="${dto.to}" name="to" aria-describedby="toHelp">
      <div id="toError" style="color:red;"></div>
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
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" value="${dto.email}" name="email" aria-describedby="emailHelp">
      <div id="emailError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="reason" class="form-label">Reason For Resignation</label>
      <textarea class="form-control" placeholder="Enter Reason for Resignation here" id="reason" name="reason">${dto.reason}</textarea>
      <div id="reasonError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="date" class="form-label">Date</label>
      <input type="date" class="form-control" id="date" name="date" value="${dto.date}" aria-describedby="dateHelp">
      <div id="dateError" style="color:red;"></div>
    </div>

    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="confirm" ${dto.confirm ? 'checked' : ''} name="confirm" id="confirm">
      <label class="form-check-label" for="confirm">Confirm</label>
      <div id="confirmError" style="color:red;"></div>
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
