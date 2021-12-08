<%-- 
    Document   : RegisterVaccineForm
    Created on : Dec 2, 2021, 1:08:27 PM
    Author     : BIGLINKS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="org.db.connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
    </head>
    <body>
      <jsp:include page="includes/systemadmin.jsp" />
      
      <%@taglib  uri="/WEB-INF/tlds/GetHealthCenterTld"  prefix="Admins" %> %>>

<div class="w3-container">
            <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
        <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">
           
        </div>

        <form action="AddAdministratorToDb.jsp" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow: 
        rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">
            
            
        <div style="display: flex;align-items: center; justify-content: center;">
            <h5 style="align-items: center;">Add a new  Administrator</h5>
        </div>

            <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label"> Name</label>
                <input type="text" class="form-control" name="myname" required>
            </div>

              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Email</label>
                <input type="email" required  class="form-control m-2" name="email">
              </div>
                          <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Health center</label>
                  
                <select required  class="form-control m-2" name="centre">
                    <option selected="" disabled>choose health center</option>
                    <Admins:GetHealthcCenterHandler/>
                </select>
              </div>
            
              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                <input type="password" required  class="form-control m-2" name="password">
              </div>
            
                    <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Confirm Password</label>
                <input type="password" required  class="form-control m-2" name="confirmpassword">
              </div>
            
                  
            

              <div class="m-3 "  style="margin:20px 0;">
                  <button type="submit" class="btn btn-success pt-3 m-2 btn-block">Register Health Administrator</button>
              </div>
            

    
        </form>
     </div>
</div>

</div>

    </body>
</html>
