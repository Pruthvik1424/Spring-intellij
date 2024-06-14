<%@ page  isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">




<head>
    <meta charset="UTF-8">
    <title>Contact Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="Contect.js"></script>
</head>

<body>

<nav class="navbar navbar-light bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="color:white">HOME</a>
        <a class="navbar-brand" href="MatrimonyRegistrationForm.jsp" style="color:white">KANNADA MATRIMONY</a>
    </div>
</nav>

<form action="contact" method ="POST">
    <div class = "container mt-5 mb-5  d-flex justify-content-center bg-light">
        <div class= "card   p-0.5">
            <div class = "card-body bg-gradient" >
              <center>  <h2>CONTACT</h2> </center>
                <br>
                 <span style="color : green "><strong>${msg}</strong></span>
                 <br>
                <div class="mb-3" >

                    <span>Name</span>
                <input type="text"  placeholder="Enter your name" name="Name" id="Name" onblur="validateName()" required/>
                <span class="error" style="color:red" id="NameError"></span>
                </div>
                <br>

                <div class="mb-3">
                    <span>Gmail</span>
                    <input type="email" placeholder="Enter your email id" name="email" id="mail" onblur="validateEMail()" required>
                    <span class="error" style="color:red" id="MailError"></span>
                </div>
                <br>

                <div class="mb-3">
                    <span>Mobile No</span>
                    <input type="number" placeholder="Enter your Mobile number" name="mobile" required>
                </div>
                <br>

                <label for="floatingTextarea2">Comments</label>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="comments" required></textarea>
                    <label for="floatingTextarea2">Comments</label>
                </div>
<br>

                <center>
                    <div class="col-12 ">
                        <input type="submit" value="Contact" class="btn btn-primary"/>
                    </div>
                </center>

            </div>
        </div>

    </div>

</form>

</body>
</html>