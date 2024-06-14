	<%@ page  isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Matrimony Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-primary fixed-top ">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="color:white">HOME</a>
        <a class="navbar-brand" href="MatrimonyRegistrationForm.jsp" style="color:white">KANNADA MATRIMONY</a>
    </div>
</nav>

<form action="go" method="POST">
<div class = "container mt-5 mb-5  d-flex justify-content-center bg-light">
    <div class= "card   p-0.5">
        <div class = "card-body bg-gradient" >

            <div>
            <h1 style="color:blue"> KANNADA MATRIMONY REGISTRATION </h1>
            </div>

            <span style="color : green "><strong>${msg}</strong></span>


                <div class="mb-3">
                    <label for="fullname" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter fullname">
                </div>

                <div class="mb-3">
                    <label for="dob" class="form-label">Date Of Birth</label>
                    <input type="datetime-local" class="form-control" id="dob" name="dob">
                </div>

            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="number" class="form-control" id="age" name="age" placeholder="Enter age">
            </div>

            <div>
                <label>Religion</label><br>
                <select class="form-control" name="religion" aria-label="select">
                    <option  selected>select religion</option>
                    <option value="hindu">Hindu</option>
                    <option value="muslim">Muslim</option>
                    <option value="christian">Christian</option>
                    <option value="jain">Jain</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <br>

                <label>Gender</label>
                <div class="gender">
                    <input class="form-check-input" type="radio" name="Gender" id="male" value="Male">
                    <label class="form-check-label" for="male">
                     Male
                    </label>
                </div>
                <div class="gender">
                    <input class="form-check-input" type="radio" name="Gender" id="female" value ="Female">
                    <label class="female" for="female">
                     Female
                    </label>
                </div>
                <br>

                <div>
                <label>Qualification</label><br>
                <select class="form-control" name="qualification" aria-label="select">
                    <option  selected>Open this select Qualification</option>
                    <option value="BE">BE</option>
                    <option value="ME">ME</option>
                    <option value="Bsc">Bsc</option>
                    <option value="Msc">Msc</option>
                    <option value="BCA">BCA</option>
                    <option value="MCA">MCA</option>
                    <option value="Other">Other</option>
                </select>
                </div>
                <br>

                <label>Job</label>
                <select class="form-control" name="job" aria-label="select">
                    <option  selected>Open this select job</option>
                    <option value="Software Engineer">Software Engineer</option>
                    <option value="Mechanical Engineer">Mechanical Engineer</option>
                    <option value="Doctor">Doctor</option>
                    <option value="Police">Police</option>
                    <option value="Teacher">Teacher</option>
                    <option value="Other">Other</option>
                </select>
            <br>

            <label>Marital Status</label>
            <select class="form-control" name="maritalStatus" aria-label="select">
                <option selected>select marital status</option>
                <option value="Single">Single</option>
                <option value="Divorced">Divorced</option>
            </select>
            <br>

            <label>Permanent Address</label>
            <div class="mb-3">
                <input type="text" class="form-control" id="permanent" name="permanentAddress" placeholder="Enter your permanent Address">
            </div>
            <br>
            <label>District</label>
            <select class="form-control" name="district" aria-label="select">
                <option selected>select District</option>
                <option value="mysore">mysore</option>
                <option value="Bengaluru">Bengaluru</option>
                <option value="chamarajanagar">Chamarajanagar</option>
                <option value="mandya">Mandya</option>
                <option value="gadag">Gadag</option>
                <option value="bagalkot">Bagalkot</option>
                <option value="shivamogga">Shivamogga</option>
                <option value="bellary">Bellary</option>
                <option value="hassan">Hassan</option>
                <option value="other">Other</option>
            </select>
            <br>

            <label>Looking For</label>
            <select class="form-control" name="lookingFor" aria-label="select">
                <option selected>select Looking for</option>
                <option value="girl">Girl</option>
                <option value="boy">Boy</option>
            </select>
<br>
            <center>
            <div class="col-12">
                <input type="submit" value="Register" class="btn btn-primary"/>
            </div>
            </center>

        </div>
    </div>
</div>

</form>

</body>
</html>