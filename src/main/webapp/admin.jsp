<%-- 
    Document   : user
    Created on : 13-Jul-2022, 4:41:58 am
    Author     : yeruv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="container/Allcss.jsp" %>
    </head>
    <body >
        <%@include file="container/navBar.jsp" %>
        <section class="vh-100 bg-dark ">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div >
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 ">
          <form action="AdminLogin" method="post">
        
            <h1 class="text-center bg-dark text-light"> Administrator</h1>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="form3Example3"  class="form-control form-control-lg"  
              placeholder="Enter admin email address" name="email" required="required" />
            <label class="form-label text-light" for="form3Example3">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="form3Example4" class="form-control form-control-lg"
              placeholder="Enter password" name="password" required="required" />
            <label class="form-label text-light" for="form3Example4">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3"  />
              <label class="form-check-label text-light" for="form2Example3">
                Remember me
              </label>
           

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0 text-light">Don't have an account? <a href="adminsignup.jsp"
                class="link-primary">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>

</section>
    </body>
</html>
