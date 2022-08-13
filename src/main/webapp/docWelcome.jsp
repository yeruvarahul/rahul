<%-- 
    Document   : docWelcome
    Created on : 14-Jul-2022, 4:56:56 am
    Author     : yeruv
--%>

<%@page import="com.entity.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="container/Allcss.jsp" %>
         
    </head>
    <body class="bg-dark">
        <nav class="navbar sticky-top navbar-light bg-dark">
  <div class="container-fluid ">
      
      <a href="index.jsp" style="text-decoration: none;"> <p class="display-3 text-light " >Appolo</p></a>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>
        
     <div class="card mb-4 " style="max-width: 540px; margin: 20px; ">
  <div class="row g-0 d-flex">
    <div class="col-md-4">
      <img src="images/rahul.jpg" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
          <%
          Doctor doc=(Doctor) session.getAttribute("Doctor");
          if(doc==null){
          %>
          <h5 class="card-title">Name</h5>
          <%
              }
else{
%>
<h5 class="card-title display-4   ">DR. <%=doc.getFirstName()%></h5>
<%
}
          %>
          
          
        
        <p class="card-text   ">Surgeon,
Pediatrician,
Physician</p>
        <p class="card-text  ">Email: <%=doc.getEmail()%> </p>
      </div>
    </div>
  </div>
</div>
     
      <p class="text-light display-3 text-center">
  Patients List
  <small class="text-muted text-light">...</small>
</p>
    <%@include file="container/doctorCards.jsp" %>
    </body>
</html>
