<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>

        <%@include file="components/common_css_js.jsp" %>
        
        <script>
        function validateForm() {
            var userName = document.getElementById("name").value.trim();
            var userEmail = document.getElementById("email").value.trim();
            var userPassword = document.getElementById("password").value.trim();
            var userPhone = document.getElementById("phone").value.trim();
            var userAddress = document.getElementById("address").value.trim();

            // Validation for User Name (not empty)
            if (userName === "") {
                alert("Please enter a User Name");
                return false;
            }

            // Validation for User Email (valid email format)
            var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,})+$/;
            if (userEmail === "" || !emailPattern.test(userEmail)) {
                alert("Please enter a valid User Email");
                return false;
            }

            // Validation for User Password (at least 6 characters)
            if (userPassword.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }

            // Validation for User Phone (numeric and at least 8 digits)
            var phonePattern = /^\d{8,}$/;
            if (!phonePattern.test(userPhone)) {
                alert("Please enter a valid User Phone (at least 8 digits)");
                return false;
            }

            // Validation for User Address (not empty)
            if (userAddress === "") {
                alert("Please enter a User Address");
                return false;
            }

            return true; // Form is valid
        }
    </script>
    </head>
    <body>

        <%@include  file="components/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-md-4 offset-md-4">                  

                    <div class="card">                        
                        <%@include  file="components/message.jsp" %>                        
                        <div class="card-body px-5">
                            <div class="container text-center">
                                <img src="img/add-friend.png"  style="max-width: 100px;" class="img-fluid" alt="">
                            </div>


                            <h3 class="text-center my-3">Sign up here !!</h3>

                            <form action="RegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="password">User password</label>
                                    <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User phone</label>
                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User Address</label>
                                    <textarea name="user_address" style="height: 100px;" class="form-control" placeholder="Enter your address"></textarea>


                                </div>

                                <div class="container text-center"> 
                                    <button class="btn btn-outline-success">Register</button>
                                    <button class="btn btn-outline-warning">Reset</button>

                                </div>


                            </form>


                        </div>

                    </div>

                </div>
            </div>



        </div>
    </body>
</html>
