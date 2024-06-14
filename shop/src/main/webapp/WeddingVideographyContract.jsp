<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Wedding Videography Contract</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function validateForm() {
  // Reset previous error messages
  document.getElementById("brideError").innerHTML = "";
  document.getElementById("groomError").innerHTML = "";
  document.getElementById("emailError").innerHTML = "";
  document.getElementById("locationError").innerHTML = "";
  document.getElementById("contractError").innerHTML = "";

  // Get form inputs
  var bride = document.getElementById("bride").value.trim();
  var groom = document.getElementById("groom").value.trim();
  var email = document.getElementById("email").value.trim();
  var location = document.getElementById("location").value.trim();
  var contract = document.getElementById("contract").value.trim();

  var isValid = true;

  // Validate bride's name
  if (bride === "") {
    document.getElementById("brideError").innerText = "Bride's name is required.";
    isValid = false;
  }

  // Validate groom's name
  if (groom === "") {
    document.getElementById("groomError").innerText = "Groom's name is required.";
    isValid = false;
  }

  // Validate email
  if (email === "") {
    document.getElementById("emailError").innerText = "Email is required.";
    isValid = false;
  } else {
    // Check email format using regex
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      document.getElementById("emailError").innerText = "Enter a valid email address.";
      isValid = false;
    }
  }

  // Validate location
  if (location === "") {
    document.getElementById("locationError").innerText = "Location is required.";
    isValid = false;
  }

  // Validate contract
  if (contract === "0") {
    document.getElementById("contractError").innerText = "Please select a contract package.";
    isValid = false;
  }

  return isValid; // Return true if form is valid, otherwise false
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
<form action="wedding" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
<div class="card">
  <div class="card-header">
  <center><h2>Wedding Videography Contract</h2></center>
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

    <div class="mb-2">
              <label for="bride" class="form-label">Brides Name</label>
              <input type="text" class="form-control" id="bride" value="${dto.bride}" name="bride" aria-describedby="brideHelp">
              <div id="brideError" style="color:red;"></div>
            </div>

             <div class="mb-2">
                          <label for="groom" class="form-label">Grooms Name</label>
                          <input type="text" class="form-control" id="groom" value="${dto.groom}" name="groom" aria-describedby="groomHelp">
                          <div id="groomError" style="color:red;"></div>
                        </div>

        <div class="mb-2">
               <label for="email" class="form-label">Email Id</label>
               <input type="email" class="form-control" id="email"  name="email" value="${dto.email}"aria-describedby="emailHelp">
               <div id="emailError" style="color:red;"></div>
             </div>


         <div class="mb-2">
          <label for="location" class="form-label">Wedding Ceremony Location</label>
         <textarea class="form-control" placeholder="Enter  Wedding ceremony location here" id="location" value="location" name="location" >${dto.location }</textarea>
         <div id="locationError" style="color:red;"></div>
           </div>
         <div class="mb-2">

    <div class="mb-2">
              <label for="contract" class="form-label" >Contract Package</label>
                <select class="form-select form-select-lg mb-2" id="contract" value="${dto.contract}"  name="contract">
                    <option  selected ${dto.contract == null ? 'selected' : '' } value="0">Select vehicle</option>
                    <option ${dto.contract eq 'Rs.60000' ? 'selected' : ''} value="Rs.60000 ">Rs.60000</option>
                    <option ${dto.contract eq 'Rs.90000' ? 'selected' : ''} value="Rs.90000" >Rs.90000</option>
                    <option ${dto.contract eq 'Rs.120000' ? 'selected' : ''} value="Rs.120000" >Rs.120000</option>
                    <option ${dto.contract eq 'Rs.150000' ? 'selected' : ''} value="Rs.150000" >Rs.150000</option>
                </select>
                <div id="contractError" style="color:red;"></div>
            </div>

                     <div class="form-group">
                   <center>   <button type="submit"   id="sendButton" class="btn btn-primary" >Submit</button> </center>
                       </div>

                      </div>

  </div>
</div>
</div>

</form>
</body>
</html>
