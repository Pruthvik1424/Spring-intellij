<%@ page isELIgnored ="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>IceCream Order</title>
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

        <a class="navbar-brand" href="index.jsp"style="color:red" >Home</a>
    </div>
</nav>
<br>

<form action = "order" method = "post">

 <div class="card text-white bg-dark mb-5" style="max-width: 50rem;">
      <center><div class="card-header" style="color:red">ORDER ICECREAM</div></center>
      <div class="card-body">
      <div>


      <span style="color:red;">
                  <c:forEach items ="${errors}" var = "objectError">
                  ${objectError.defaultMessage}</br>
                  </c:forEach>
                  </span>

                  ${icecream}


                   <div class="mb-3">
                            <label for="Brand" class="form-label">Brand:</label>
                            <input type="text" class="form-control" id="brand" value="${iceCreamDto.brand}" name="brand" onblur="BrandValidation()" placeholder="Enter brand name">
                            <span class="error" style="color:red" id="brandError"></span>
                          </div>


        <div class="mb-3">
        <label>Product Type:</label><br>
          <input class="form-check-input" type="radio" onblur="setType()" value="combo" name="icecream" id="type" ${icereamdto.type eq 'combo' ? 'checked' : ''} >
          <span class="error1" style="color:red" id="type"></span>

          <label class="form-check-label" for="type1">
           Combo
          </label>
        </div>
        <div class="mb-3">
          <input class="form-check-input" type="radio" value= "multipack" name="icecream" id="multipack" ${icereamdto.multipack eq 'multipack' ? 'checked' : ''} >
          <label class="form-check-label" for="type2">
           Multipack
          </label>
        </div>


        <div class="mb-3">
                <label for="flavour">Flavour:</label>
                <select class="form-select" aria-label="Default select"  value="${iceCreamDto.flavour}" id="flavour" onblur="flavourValidation()" name="flavour">
                <span class="error" style="color:red" id="flavourError" ></span>
                  <option  ${iceCreamDto.flavour == null ? 'selected' : '' } value= "0" disabled>Open this select flavour</option>
                  <option ${iceCreamDto.flavour eq 'Black Current' ? 'selected' : ''} value="Black Current">Black Current</option>
                  <option ${iceCreamDto.flavour eq 'Butterscotch' ? 'selected' : ''} value="Butterscotch">Butterscotch</option>
                  <option ${iceCreamDto.flavour eq 'Chocolate' ? 'selected' : ''}   value="Chocolate">Chocolate</option>
                  <option ${iceCreamDto.flavour eq 'Coconut' ? 'selected' : ''}  value="Coconut">Coconut</option>
                  <option ${iceCreamDto.flavour eq 'Dry fruits' ? 'selected' : ''}  value="Dry fruits">Dry fruits</option>
                  <option ${iceCreamDto.flavour eq 'Exotic/Sundae' ? 'selected' : ''}  value="Exotic/Sundae">Exotic/Sundae</option>
                </select>
                </div>


         <div class="mb-3">
           <input class="form-check-input" type="checkbox" value="accept" id="accept" >
           <label class="form-check-label" for="accept">
            Accept
           </label>
         </div>

         <div>
             <input type="submit" value="Order" id="orderbtn" class="btn btn-danger"  />
         </div>



   </div>
  </div>
 </div>




</form>

</body>
</html>