<%-- 
    Document   : signUp
    Created on : 13-Jul-2022, 6:18:28 pm
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
    <body class="bg-dark">
        <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start bg-dark" style="background-color: hsl(0, 0%, 96%)">
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h1 class="my-5 display-3 fw-bold text-light">
            Connect With
            <span class="text-primary">Apollo</span> Health Care <br />
            <span class="text-primary">World Class Excellence:</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
            “Our mission is to bring healthcare of International standards within the reach of every individual.
            We are committed to the achievement and maintenance of 
            excellence in education, research and healthcare for the benefit of humanity”.
          </p>
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0" >
          <div class="card" style="background-color: #72858C">
            <div class="card-body py-5 px-md-5">
                
                <form action="DoctorRegister" method="post">
                    
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="form3Example1" class="form-control" name="firstname" />
                      <label class="form-label text-light" for="form3Example1" >First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="form3Example2" class="form-control"  name="lastname"/>
                      <label class="form-label text-light" for="form3Example2">Last name</label>
                    </div>
                  </div>
                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                    <input type="email" id="form3Example3" class="form-control" name="email" />
                  <label class="form-label text-light" for="form3Example3">Email address</label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <input type="password" id="form3Example4" class="form-control" name="password" />
                  <label class="form-label text-light" for="form3Example4">Password</label>
                </div>

                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-center mb-4">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                  <label class="form-check-label text-light" for="form2Example33">
                    Subscribe to our newsletter
                  </label>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4  ">
                  Sign up
                </button>

                <!-- Register buttons -->
                <div class="text-center text-light">
                  <p>or sign up with:</p>
                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-facebook-f"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-google"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-twitter"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-github"></i>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
    </body>
</html>
