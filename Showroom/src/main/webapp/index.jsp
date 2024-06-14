<%@ page isELIgnored ="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<form action = "send" method = "post">

<nav class="navbar navbar-dark bg-dark">
  <!-- Navbar content -->
   <div class="container-fluid">
           <!-- Add your logo here -->
                                   <a class="navbar-brand" href="#">
                                       <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70" >
                                   </a>
                                   <!-- End of logo -->
      <ul class="nav justify-content-end">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="CarShowRoom.jsp">Car</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="CarDetails.jsp">CarDetails</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Bike.jsp">Bike</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>


      </ul>
     </div>
</nav>



</form>




</body>
</html>
