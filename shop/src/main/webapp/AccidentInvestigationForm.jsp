<%@ page  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Accident Investigation Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
    function validateForm() {
        var isValid = true;

        // Clear previous error messages
        document.getElementById("dateError").innerHTML = "";
        document.getElementById("locationError").innerHTML = "";
        document.getElementById("addressError").innerHTML = "";
        document.getElementById("vehicleError").innerHTML = "";
        document.getElementById("vehicleNumberError").innerHTML = "";

        // Validate Date
        var date = document.getElementById("date").value;
        if (date == "") {
            document.getElementById("dateError").innerHTML = "Date of Accident is required.";
            isValid = false;
        }

        // Validate Location
    //    var location = document.getElementById("location").value;
    //    if (location == "") {
    //        document.getElementById("locationError").innerHTML = "Location is required.";
    //       isValid = false;
    //    }

      // Get the location value
         const locationInput = document.getElementById('location');
         const locationError = document.getElementById('locationError');
         const locationOutput = document.getElementById('locationOutput');
         const locationValue = locationInput.value.trim();

         // Clear any previous error message and output
         locationError.textContent = '';
         locationOutput.textContent = '';

         // Regular expression for validation (alphabetic characters and spaces)
         const locationPattern = /^[A-Za-z\s]+$/;

         // Validation checks
         if (locationValue === '') {
           locationError.textContent = 'Location cannot be empty';
         } else if (locationValue.length < 3 || locationValue.length > 30) {
           locationError.textContent = 'Location must be between 3 and 30 characters';
         } else if (!locationPattern.test(locationValue)) {
           locationError.textContent = 'Location can only contain alphabetic characters and spaces';
         } else {
           // If validation passes, display the location in green color
           locationOutput.textContent = `Entered location is correct`;
         }




        // Get the address value
           const addressInput = document.getElementById('address');
           const addressError = document.getElementById('addressError');
           const addressOutput = document.getElementById('addressOutput');
           const addressValue = addressInput.value.trim();

           // Clear any previous error messages and outputs
           addressError.textContent = '';
           addressOutput.textContent = '';

           // Regular expression for validation (alphabetic characters and spaces)
           const textPattern = /^[A-Za-z\s]+$/;

           // Validation function
           function validateInput(value, minLength, maxLength, pattern, errorElement, errorMessage) {
             if (value === '') {
               errorElement.textContent = errorMessage.empty;
               return false;
             } else if (value.length < minLength || value.length > maxLength) {
               errorElement.textContent = errorMessage.length;
               return false;
             } else if (!pattern.test(value)) {
               errorElement.textContent = errorMessage.pattern;
               return false;
             }
             return true;
           }

           // Error messages
           const addressErrorMessage = {
             empty: 'Address cannot be empty',
             length: 'Address must be between 3 and 30 characters',
             pattern: 'Address can only contain alphabetic characters and spaces'
           };

           // Validate address
           const isAddressValid = validateInput(addressValue, 3, 30, textPattern, addressError, addressErrorMessage);

           // Display output if valid
           if (isAddressValid) {
             addressOutput.textContent = `You have entered address is correct`;
           }




        // Validate Vehicle
        var vehicle = document.getElementById("vehicle").value;
        if (vehicle == "0") {
            document.getElementById("vehicleError").innerHTML = "Please select a vehicle.";
            isValid = false;
        }

        // Validate Vehicle Number
        var vehicleNumber = document.getElementById("vehicleNumber").value;
        if (vehicleNumber == "") {
            document.getElementById("vehicleNumberError").innerHTML = "Vehicle Number is required.";
            isValid = false;
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
<form action="accident" method="post" onsubmit="return validateForm()">
<div class="container mt-5">
<div class="card">
  <div class="card-header">
    <center><h2>Accident Investigation Form</h2></center>
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
      <center><h5>Particulars of Accident</h5></center>
      <div class="mb-2">
        <label for="date" class="form-label">Date of Accident</label>
        <input type="date" class="form-control" id="date" name="date" value="${dto.date}" aria-describedby="dateHelp">
        <span id="dateError" style="color:red;"></span>
      </div>
      <div class="mb-2">
        <label for="location" class="form-label">Location</label>
        <input type="text" class="form-control" id="location" value="${dto.location}" name="location" aria-describedby="locationHelp">
        <span id="locationError" style="color:red;"></span>
        <p id="locationOutput" style="color:green;"></p>

      </div>
      <div class="mb-2">
        <label for="address" class="form-label">Address</label>
        <textarea class="form-control" placeholder="Enter Address of accident held here" id="address" name="address">${dto.address}</textarea>
        <span id="addressError" style="color:red;"></span>
        <p id="addressOutput" style="color:green;"></p>

      </div>
      <div class="mb-2">
        <label for="vehicle" class="form-label">Vehicle</label>
        <select class="form-select form-select-lg mb-2" id="vehicle" name="vehicle">
          <option selected ${dto.vehicle == null ? 'selected' : ''} value="0">Select vehicle</option>
          <option ${dto.vehicle eq 'Bike' ? 'selected' : ''} value="Bike">Bike</option>
          <option ${dto.vehicle eq 'Car' ? 'selected' : ''} value="Car">Car</option>
          <option ${dto.vehicle eq 'Bus' ? 'selected' : ''} value="Bus">Bus</option>
          <option ${dto.vehicle eq 'Laury' ? 'selected' : ''} value="Laury">Laury</option>
          <option ${dto.vehicle eq 'Truck' ? 'selected' : ''} value="Truck">Truck</option>
        </select>
        <span id="vehicleError" style="color:red;"></span>
      </div>
      <div class="mb-2">
        <label for="vehicleNumber" class="form-label">Vehicle Number</label>
        <input type="text" class="form-control" id="vehicleNumber" value="${dto.vehicleNumber}" name="vehicleNumber" aria-describedby="vehicleNumberHelp">
        <span id="vehicleNumberError" style="color:red;"></span>
      </div>
      <div class="form-group">
        <center><button type="submit" id="sendButton" class="btn btn-primary">Submit</button></center>
      </div>
    </div>
  </div>
</div>
</div>
</form>
</body>
</html>
