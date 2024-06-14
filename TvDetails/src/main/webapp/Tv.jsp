<%@ page isELIgnored ="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tv Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<!-- <script>
function BrandValidation() {
    var brandInput = document.getElementById("brand").value;
    var brandError = document.getElementById("brandError");
    var sendButton = document.getElementById("submitBtn");

    if (brandInput.length >= 3 && brandInput.length <= 20) {
        brandError.innerHTML = "Entered Brand name is correct";
        brandError.style.color = 'green';
        sendButton.removeAttribute("disabled");
    } else {
        brandError.innerHTML = "Entered value is incorrect,Brand Name should be between 3 and 20 characters";
        brandError.style.color = 'red';
        sendButton.setAttribute("disabled", "");
    }
}

function versionValidation(){
var versionInput = document.getElementById("version");
var versionError = document.getElementById("versionError");
var sendButton = document.getElementById("submitBtn");

if(versionInput.length > 2){
 versionError.innerHTML = "Entered version is correct";
        versionError.style.color = 'green';
        sendButton.removeAttribute("disabled");

}else {
         versionError.innerHTML = "Entered value is incorrect,please enter valid version";
         versionError.style.color = 'red';
         sendButton.setAttribute("disabled", "");

}
}


   function resolutionValidation() {
                var resolutionInput = document.getElementById("resolution").value;
                var resolutionError = document.getElementById("resolutionError");
                var sendButton = document.getElementById("submitBtn");

                if (resolutionInput.length >= 3 && resolutionInput.length <= 20) {
                    resolutionError.innerHTML = "Entered model is correct";
                    resolutionError.style.color = 'green';
                    sendButton.removeAttribute("disabled");
                } else {
                    resolutionError.innerHTML = "Entered value is incorrect. model must be between 3 and 20 characters.";
                    resolutionError.style.color = 'red';
                    sendButton.setAttribute("disabled", "");
                }
            }

 function reviewValidation() {
            var reviewInput = document.getElementById("review").value;
            var reviewError = document.getElementById("reviewError");
            var sendButton = document.getElementById("submitBtn");

            if (reviewInput.length >= 2 && reviewInput.length <= 30) {
                reviewError.innerHTML = "Entered review is correct";
                reviewError.style.color = 'green';
                sendButton.removeAttribute("disabled");
            } else {
                reviewError.innerHTML = "Entered value is incorrect.review must be between 2 and 30 characters.";
                reviewError.style.color = 'red';
                sendButton.setAttribute("disabled", "");
            }
        }



</script-->
<body>
  <nav class="navbar navbar-dark bg-dark">
        <!-- Navbar content -->
         <div class="container-fluid">



        <!-- Add your logo here -->
                                <a class="navbar-brand" href="#">
                                    <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70" >
                                </a>
                                <!-- End of logo -->

            <a class="navbar-brand" href="index.jsp"style="color:red" >Home</a>
        </div>
    </nav>


<form action = "send" method = "post">


    <br>

    <div class="card text-white bg-dark mb-5" style="max-width: 50rem;">
      <center><div class="card-header" style="color:red">TV DETAILS</div></center>
      <div class="card-body">
      <div>

<span style="color : red;">
            <c:forEach items ="${errors}" var = "objectError">
            ${objectError.defaultMessage}</br>
            </c:forEach>
            </span>

        <div class="mb-3">
          <label for="brand" class="form-label">Brand:</label>
          <input type="text" class="form-control" id="brand" @value={brand} name="brand" onblur="BrandValidation()" placeholder="Enter brand name">
          <span class="error" style="color:red" id="brandError"></span>

        </div>

        <div class="mb-3">
                  <label for="version" class="form-label">Version:</label>
                  <input type="number" class="form-control" @value{price} id="version"
                  onblur="versionValidation()" name="price" placeholder="Enter version">
                  <span class="error1" style="color:red" id="versionError"></span>
                </div>


        <div class="mb-3">
        <label>Mounting Type:</label><br>
          <input class="form-check-input" type="radio" @value{type} value="table mounting" name="type" id="type1">
          <span class="error1" style="color:red" id="type"></span>

          <label class="form-check-label" for="type1">
            Tabel Mounting
          </label>
        </div>
        <div class="mb-3">
          <input class="form-check-input" type="radio" value= "wall mounting" @value{type} name="type" id="type2">
          <label class="form-check-label" for="type2">
           Wall Mounting
          </label>
        </div>

        <div class="mb-3">
        <label for="resolution">Resolution:</label>
        <select class="form-select" aria-label="Default select example" @value{resolution} id="resolution" onblur="resolutionValidation()" name="resolution">
        <span class="error" style="color:red" id="resolutionError" ></span>
          <option selected  disabled>Open this select resolution</option>
          <option value="8K">8K</option>
          <option value="4K">4K</option>
          <option value="1080i">1080i</option>
          <option value="1080p">1080p</option>
          <option value="768i">768p</option>
          <option value="720p">720p</option>
        </select>
        </div>

        <div class="mb-3">
        <label for="review">Review</label>
          <textarea class="form-control" placeholder="Leave a review here" id="review" @value{review}  onblur="reviewValidation()" name="review" style="height: 100px"></textarea>
          <span class="error" style="color:red" id="reviewError"></span>
        </div>

<div>
    <input type="submit" value="Submit" id="submitbtn" class="btn btn-danger"  />
</div>

      </div>
    </div>

</form>

</body>
</html>