<%-- 
    Document   : doctor
    Created on : 13-Jul-2022, 4:41:37 am
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
    <body>
        <%@include file="container/navBar.jsp" %>
       <section class="vh-100 bg-dark" >
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    
                    <span class="h1 fw-bold mb-0">Doctor</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                     <form action="LoginDoc" method="post" >
                  <div class="form-outline mb-4">
                      <input type="email" id="form2Example17" class="form-control form-control-lg" name="email" />
                    <label class="form-label" for="form2Example17">Email address</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" class="form-control form-control-lg" name="password" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                  </div>

                  
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="signUpDoctor.jsp"
                      style="color: #393f81;">Register here</a></p>
                  <a href="terms.jsp" class="small text-muted">Terms of use.</a>
                  
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </body>
</html>
