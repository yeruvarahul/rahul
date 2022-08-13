<%-- 
    Document   : appointment
    Created on : 13-Jul-2022, 4:41:49 am
    Author     : yeruv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="container/Allcss.jsp" %>
        <script>
            function clearFields() {

     document.getElementById("myInput1").value = "";
     document.getElementById("myInput2").value = "";
     document.getElementById("myInput3").value = "";
     document.getElementById("myInput4").value = "";
     document.getElementById("myInput5").value = "";
     document.getElementById("myInput6").value = "";
}
            
            </script>
    </head>
    <body class="bg-primary">
        <%@include file="container/navBar.jsp" %>
        <div class="banner3">
  <div class="py-5 banner" style="background-image:url(https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/form-banners/banner2/banner-bg.jpg); background-repeat: no-repeat">
    <div class="container ">
      <div class="row ">
        <div class="col-md-7 col-lg-5 ">
          <h1 class="my-3 text-white font-weight-medium text-uppercase">Book Appointment</h1>
          
          
              <div class="bg-white" > 
                             <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                 <button class="btn btn-info mt-1 text-white" type="submit" onClick="clearFields()">Clear All</button>
  
</div>
                  <form action="appointmentBooking" method="post">
            <div class="form-row border-bottom">
              <div class="p-4 left border-right w-50">
                  <label class="text-inverse font-12 text-uppercase">First Name</label> 
                  <input type="text" class="border-2 p-0 font-14 form-control" name="firstname" id="myInput1"/>                         
              </div>
              <div class="p-4 right w-50">
                <label class="text-inverse font-12 text-uppercase">Last Name</label>
                <input type="text" class="border-2 p-0 font-14 form-control" name="lastname"  id="myInput2"/>
              </div>
            </div>
            <div class="form-row border-bottom p-4">
              <label class="text-inverse font-12 text-uppercase">Email Address</label>
              <input type="text" class="border-2 p-0 font-14 form-control" name="email"  id="myInput3" />
            </div>
            <div class="form-row border-bottom p-4">
              <label class="text-inverse font-12 text-uppercase">Phone Number</label>
              <input type="text" class="border-2 p-0 font-14 form-control" name="phone"  id="myInput4"/>
            </div>
            <div class="form-row border-bottom p-4 position-relative">
              <label class="text-inverse font-12 text-uppercase">Booking Date</label>
              <div class="input-group date ">
                  <input type="text" class="border-1 p-0 font-14 form-control" name="date"   id="myInput5"/>
                <label class="mt-2" for="dp"><i class="icon-calendar mt-1"></i></label>
              </div>
            </div>
              <div class="form-row border-bottom p-4">
              <label class="text-inverse font-12 text-uppercase">Message</label>
              <textarea col="1" row="1" class="border-1 p-0 font-weight-light font-14 form-control" placeholder="Write Down the Message" name="message"  id="myInput6"></textarea>
            </div>
            
             <div class="d-grid gap-1">
  <button class="btn btn-info mt-1 text-white" type="submit">Book Appointment</button>
  
</div>
          </div>        
        </div>
      </div>
    </div>
  </div>
</div>
        
       
    </body>
</html>
