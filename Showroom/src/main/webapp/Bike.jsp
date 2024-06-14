<%@ page  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>X-workz</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<nav class="p-3 mb-2 bg-dark text-white">
  <div class="container-fluid">

  <!-- Add your logo here -->
                          <a class="navbar-brand" href="#">
                              <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70" >
                          </a>
                          <!-- End of logo -->
                          <a class="navbar-brand" style="color:white;" href="index.jsp">Home</a>

  </div>
</nav>
<body>
<form action="save" method="post">
<div class="container">
<div class="card">
  <div class="card-header">
  <center>Hospital Form</center>
  </div>
  <span style="color:red;">
  <c:forEach items="${errors}" var="objectError">
  ${objectError.defaultMessage}</br>
  </c:forEach>
  </span>
${dto}
  <div class="card-body">
  <div class="mb-2">
          <label for="exampleInputEmail1" class="form-label">Brand Name</label>
          <input type="text" class="form-control" id="name" value="${dto.name}" name="name" aria-describedby="emailHelp">

        </div>



    <div>
                <select class="form-select form-select-lg mb-2" aria-label=".form-select-sm example" name="color">
                    <option  selected value="0">Select color</option>
                    <option value="white">White</option>
                    <option  value="Black" >Black</option>
                    <option value="Red" >Red</option>
                    <option value="Blue" >Blue</option>
                    <option value="Green" >Green</option>

                </select>

            </div>

             Searching Hospital For
                    <div class="form-check">
                        <input class="form-check-input"  type="radio"  id="type" name="type" value="Ev" >
                        <label class="form-check-label" for="flexRadioDefault1">
                           EV
                        </label>
                    </div>
                     <div class="form-check">
                            <input class="form-check-input" type="radio" id="type" name="type" value="ic" >
                            <label class="form-check-label" for="flexRadioDefault1">
                               IC
                            </label>
                        </div>





                     <div class="form-check">
                       <input class="form-check-input" type="checkbox" value="" name="check" id="flexCheckDefault">
                       <label class="form-check-label" for="flexCheckDefault">
                         conform
                       </label>
                     </div>

                      </div>
                             <div class="form-group">
                             <button type="submit"   id="sendButton" class="btn btn-primary" >Submit</button>
                             </div>

  </div>
</div>
</div>

</form>
</body>
</html>