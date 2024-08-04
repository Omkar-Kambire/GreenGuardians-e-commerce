<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="components/common_css_js.jsp" %>

    </head>
    <body>
        <%@include  file="components/navbar.jsp" %>

        <div class="container">
            <div class="row mt-5">                

                <div class="col-md-6">
                    <!--card-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your selected items</h3>

                            <div class="cart-body">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <!--form details-->
                    <!--card-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your details for order</h3>
                            
                            <form action="OrderServlet" method="post">
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" value="<%= user.getUserEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted"></small>
                                </div>
                                <div class="form-group">
                                    <label for="name">Your name</label>
                                    <input name="user_name" value="<%= user.getUserName()%>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>


                                <div class="form-group">
                                    <label for="name">Your contact</label>
                                    <input name="user_phone" value="<%= user.getUserPhone() %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter contact number">
                                </div>


                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" >Your shipping address</label>
                                    <textarea name="user_address" value="<%= user.getUserAddress()%>" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
                                </div>

                                <div class="container text-center">
                                    <!--<button class="btn btn-outline-primary">Continue Shopping</button>-->
                                    <button class="btn btn-outline-success " data-bs-toggle="modal" data-bs-target="#order-modal" >Payment</button>
                                </div>

                            </form>    
                             
                           <div class="d-flex align-items-center justify-content-center mt-2">
                                    <button class="btn btn-outline-primary mx-3" onclick="window.location.href='index.jsp'">Continue Shopping</button>
                                    </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
                                
                                <!--order successfull-->
 
<!-- Modal -->
<div class="modal fade" id="order-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Order status</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <h1>Order placed successfully!</h1>
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>-->
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Ok</button>
      </div>
    </div>
  </div>
</div>
                                
                       
                                
                                <!--end order successfull-->


        <%@include  file="components/common_modals.jsp" %>
    </body>
</html>
