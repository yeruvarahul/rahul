<%-- 
    Document   : PatWelcome
    Created on : 17-Jul-2022, 6:02:56 am
    Author     : yeruv
--%>

<%@page import="com.entity.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="container/Allcss.jsp" %>
        <style>
         
            /*----  Main Style  ----*/
#cards_landscape_wrap-2{
  text-align: center;
  background: #F7F7F7;
}
#cards_landscape_wrap-2 .container{
  padding-top: 80px; 
  padding-bottom: 100px;
}
#cards_landscape_wrap-2 a{
  text-decoration: none;
  outline: none;
}
#cards_landscape_wrap-2 .card-flyer {
  border-radius: 5px;
}
#cards_landscape_wrap-2 .card-flyer .image-box{
  background: #ffffff;
  overflow: hidden;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.50);
  border-radius: 5px;
}
#cards_landscape_wrap-2 .card-flyer .image-box img{
  -webkit-transition:all .9s ease; 
  -moz-transition:all .9s ease; 
  -o-transition:all .9s ease;
  -ms-transition:all .9s ease; 
  width: 100%;
  height: 200px;
}
#cards_landscape_wrap-2 .card-flyer:hover .image-box img{
  opacity: 0.7;
  -webkit-transform:scale(1.15);
  -moz-transform:scale(1.15);
  -ms-transform:scale(1.15);
  -o-transform:scale(1.15);
  transform:scale(1.15);
}
#cards_landscape_wrap-2 .card-flyer .text-box{
  text-align: center;
}
#cards_landscape_wrap-2 .card-flyer .text-box .text-container{
  padding: 30px 18px;
}
#cards_landscape_wrap-2 .card-flyer{
  background: #FFFFFF;
  margin-top: 50px;
  -webkit-transition: all 0.2s ease-in;
  -moz-transition: all 0.2s ease-in;
  -ms-transition: all 0.2s ease-in;
  -o-transition: all 0.2s ease-in;
  transition: all 0.2s ease-in;
  box-shadow: 0px 3px 4px rgba(0, 0, 0, 0.40);
}
#cards_landscape_wrap-2 .card-flyer:hover{
  background: #fff;
  box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
  -webkit-transition: all 0.2s ease-in;
  -moz-transition: all 0.2s ease-in;
  -ms-transition: all 0.2s ease-in;
  -o-transition: all 0.2s ease-in;
  transition: all 0.2s ease-in;
  margin-top: 50px;
}
#cards_landscape_wrap-2 .card-flyer .text-box p{
  margin-top: 10px;
  margin-bottom: 0px;
  padding-bottom: 0px; 
  font-size: 14px;
  letter-spacing: 1px;
  color: #000000;
}
#cards_landscape_wrap-2 .card-flyer .text-box h6{
  margin-top: 0px;
  margin-bottom: 4px; 
  font-size: 18px;
  font-weight: bold;
  text-transform: uppercase;
  font-family: 'Roboto Black', sans-serif;
  letter-spacing: 1px;
  color: #00acc1;
}
        </style>
        <script>
function delete1() {
  const element = document.getElementById("card2");
  element.remove();
}
</script>
    </head>
    
    <body >
               <!-- Topic Cards -->
               
    <div id="cards_landscape_wrap-2">
        <div class="py-5 banner" style="background-image:url(https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/form-banners/banner2/banner-bg.jpg); background-repeat: no-repeat">
        <div class="container" >
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">                                           
          
                                    <img src="images/app.jpeg" alt="" />
                                    
                                    
                                </div>
                                
                                <div class="text-container">
                                                <%
          Appointment app=(Appointment) session.getAttribute("Appointment");
          if(app==null)  {%>     
                                    <h6>Name</h6>
                                    <% } 
else{
%><h6><%=app.getFirstname()%> <%=app.getLastname()%></h6> 
<p> Email: <span style="color:#0275d8;">
        <%=app.getEmail()%></span><br>Phone: <span style="color:#0275d8;">
            <%=app.getPhone()%></span><br>Appointment Date: <span style="color:#0275d8;"> <%=app.getDate()%></span><br>"Message: <span style="color:#0275d8;"><%=app.getMessage()%></span></p>
<%
} %> 
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                 <button class="btn btn-danger mt-1 text-white" type="submit" onClick="clearFields()">Cancel</button>
  
</div>
                                
                              </div>
                            </div>
                        </div>
                    </a>

                </div>
<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3" id="card2">
                    <a href="">                       
                        <div class="card-flyer">                            
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="https://cdn.pixabay.com/photo/2018/03/30/15/12/dog-3275593_960_720.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                    <h6>Abhishek</h6>
                                   <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
       <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                 <button class="btn btn-danger mt-1 text-white" type="submit" onClick="clearFields()">Cancel</button>
  
</div>
                                </div>                               
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        </div>
    </div>

    </body>
</html>
