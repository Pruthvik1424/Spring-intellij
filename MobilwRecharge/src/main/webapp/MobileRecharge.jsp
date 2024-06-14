<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Mobile Recharge</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function validateForm() {
    // Example of validation logic
    let mobilenumber = document.getElementById('mobilenumber').value;
    let plans = document.getElementById('plans').value;
    let sim = document.getElementById('sim').value;
    let rechargeType = document.querySelector('input[name="rechargeType"]:checked');
    let agree = document.getElementById('agree').checked;

    let isValid = true;
    let errorMessage = "";

    if (!mobilenumber) {
        document.getElementById('mobilenumberError').innerText = "Mobile number is required.";
        isValid = false;
    } else {
        document.getElementById('mobilenumberError').innerText = "";
    }

    if (!plans) {
        document.getElementById('plansError').innerText = "Please select a plan.";
        isValid = false;
    } else {
        document.getElementById('plansError').innerText = "";
    }

    if (!sim) {
        document.getElementById('simError').innerText = "Please select a sim card.";
        isValid = false;
    } else {
        document.getElementById('simError').innerText = "";
    }

    if (!rechargeType) {
        document.getElementById('rechargeTypeError').innerText = "Please select a recharge type.";
        isValid = false;
    } else {
        document.getElementById('rechargeTypeError').innerText = "";
    }

    if (!agree) {
        document.getElementById('agreeError').innerText = "You must agree to the terms.";
        isValid = false;
    } else {
        document.getElementById('agreeError').innerText = "";
    }

    return isValid;
}
</script>
</head>
<nav class="p-3 mb-2 bg-dark text-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70">
    </a>
    <a class="navbar-brand" style="color:white;" href="index.jsp">Home</a>
  </div>
</nav>
<body>
<form id="mobilerecharge" action="recharge" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
<div class="card">
  <div class="card-header">
    <center><h2>Mobile Recharge</h2></center>
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
      <label for="mobilenumber" class="form-label">Mobile Number:</label>
      <input type="text" class="form-control" id="mobilenumber" value="${dto.mobilenumber}" name="mobilenumber" aria-describedby="mobilenumberHelp">
      <div id="mobilenumberError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="plans" class="form-label">Recharge Plans</label>
      <select class="form-select form-select-lg mb-2" id="plans" name="plans">
        <option ${dto.plans == null ? 'selected' : ''} value=null disabled>Select Recharge plans</option>
        <option ${dto.plans eq '299/month' ? 'selected' : ''} value="299/month">299/month</option>
        <option ${dto.plans eq '666/3month' ? 'selected' : ''} value="666/3month">666/3month</option>
        <option ${dto.plans eq '999/6month' ? 'selected' : ''} value="999/6month">999/6month</option>
        <option ${dto.plans eq '1599/year' ? 'selected' : ''} value="1599/year">1599/year</option>
      </select>
      <div id="plansError" style="color:red;"></div>
    </div>

    <div class="mb-2">
      <label for="sim" class="form-label">Sim Card</label>
      <select class="form-select form-select-lg mb-2" id="sim" name="sim">
        <option ${dto.sim == null ? 'selected' : ''} value=null disabled>Select sim card</option>
        <option ${dto.sim eq 'Jio' ? 'selected' : ''} value="Jio">Jio</option>
        <option ${dto.sim eq 'Airtel' ? 'selected' : ''} value="Airtel">Airtel</option>
        <option ${dto.sim eq 'VI' ? 'selected' : ''} value="VI">VI</option>
        <option ${dto.sim eq 'Bsnl' ? 'selected' : ''} value="Bsnl">Bsnl</option>
      </select>
      <div id="simError" style="color:red;"></div>
    </div>

    <label for="type" class="form-label">Recharge Type</label>
    <div class="form-check">
      <input class="form-check-input" type="radio" id="prepaid" name="rechargeType" value="prepaid" ${dto.rechargeType eq 'prepaid' ? 'checked' : ''}>
      <label class="form-check-label" for="prepaid">Prepaid</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" id="Postpaid" name="rechargeType" value="Postpaid" ${dto.rechargeType eq 'Postpaid' ? 'checked' : ''}>
      <label class="form-check-label" for="Postpaid">Postpaid</label>
    </div>
    <div id="rechargeTypeError" style="color:red;"></div>

    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="agree" ${dto.agree ? 'checked' :''} name="agree" id="agree">
      <label class="form-check-label" for="agree">Agree</label>
      <div id="agreeError" style="color:red;"></div>
    </div>

    <div class="form-group">
      <center><button type="submit" id="sendButton" class="btn btn-primary">Recharge</button></center>
    </div>
  </div>
</div>
</div>
</form>
</body>
</html>
