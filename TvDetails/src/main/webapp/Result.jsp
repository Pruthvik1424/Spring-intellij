<%@ page  isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Result</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <!-- Navbar content -->
   <div class="container-fluid">
           <!-- Add your logo here -->
                                   <a class="navbar-brand" href="#">
                                       <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="xworkz" width="140" height="70" >
                                   </a>
                                   <!-- End of logo -->
        <a class="navbar-brand" href="Tv.jsp"style="color:red" >TV</a>
        <a class="navbar-brand" href="index.jsp"style="color:red" >Home</a>
    </div>
</nav>
<form>
<span style="color : green "><strong>${msg}</strong></span>
</form>


</body>
</html>