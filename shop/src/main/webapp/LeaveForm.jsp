<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Leave Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script>
  function validateForm() {
    var isValid = true;

    // Validate applicant name
    var applicantname = document.getElementById("applicantname").value.trim();
    if (applicantname === "") {
      document.getElementById("applicantnameError").innerHTML = "Applicant name is required";
      isValid = false;
    } else {
      document.getElementById("applicantnameError").innerHTML = "";
    }

    // Validate department
    var department = document.getElementById("department").value;
    if (department === "0") {
      document.getElementById("departmentError").innerHTML = "Please select your department";
      isValid = false;
    } else {
      document.getElementById("departmentError").innerHTML = "";
    }

    // Validate mobile number
    var mobile = document.getElementById("mobile").value.trim();
    if (mobile === "") {
      document.getElementById("mobileError").innerHTML = "Mobile number is required";
      isValid = false;
    } else {
      document.getElementById("mobileError").innerHTML = "";
    }

    // Validate reason for leave
    var reasonEmergency = document.getElementById("reasonEmergency").checked;
    var reasonAnnual = document.getElementById("reasonAnnual").checked;
    if (!reasonEmergency && !reasonAnnual) {
      document.getElementById("reasonError").innerHTML = "Please select a reason for leave";
      isValid = false;
    } else {
      document.getElementById("reasonError").innerHTML = "";
    }

    // Validate date
    var date = document.getElementById("date").value;
    if (date === "") {
      document.getElementById("dateError").innerHTML = "Date is required";
      isValid = false;
    } else {
      document.getElementById("dateError").innerHTML = "";
    }

    // Validate confirm checkbox
    var confirm = document.getElementById("confirm").checked;
    if (!confirm) {
      document.getElementById("confirmError").innerHTML = "Please confirm your submission";
      isValid = false;
    } else {
      document.getElementById("confirmError").innerHTML = "";
    }

    return isValid;
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
<form id="leaveForm" action="leave" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
  <div class="card">
    <div class="card-header">
      <center><h2>Leave Application Form</h2></center>
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
        <label for="applicantname" class="form-label">Applicant Name</label>
        <input type="text" class="form-control" id="applicantname" value="${dto.applicantname}" name="applicantname" aria-describedby="applicantnameHelp">
        <div id="applicantnameError" style="color:red;"></div>
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

      <label for="reason" class="form-label">Reason For Leave</label>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="reasonEmergency" name="reason" value="emergency" ${dto.reason eq 'emergency' ? "checked" : ''}>
        <label class="form-check-label" for="reasonEmergency">Emergency Leave</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="reasonAnnual" name="reason" value="annual" ${dto.reason eq 'annual' ? "checked" : ''}>
        <label class="form-check-label" for="reasonAnnual">Annual Leave</label>
      </div>
      <div id="reasonError" style="color:red;"></div>

      <div class="mb-2">
        <label for="date" class="form-label">Date</label>
        <input type="date" class="form-control" id="date" name="date" value="${dto.date}" aria-describedby="dateHelp">
        <div id="dateError" style="color:red;"></div>
      </div>

      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="confirm" ${dto.confirm ? 'checked' :''} name="confirm" id="confirm">
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
