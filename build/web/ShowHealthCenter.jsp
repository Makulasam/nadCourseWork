<%-- 
    Document   : ShowPatients
    Created on : Dec 4, 2021, 6:32:52 PM
    Author     : BIGLINKS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
   <jsp:include page="includes/systemadmin.jsp" />
                         <%@ taglib uri="/WEB-INF/tlds/ShowPatientTld" prefix="ShowHealthCenter" %>
                         
                         
        <div class="w3-container" style="margin-left:30%">
            

            <table class="table mytable thead-dark">
  <thead >
    <tr>
      <th >Health ID</th>
      <th >Health Center Name</th>
      <th>Total Patients</th>
      
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
      <ShowHealthCenter:ShowHealthCenterHandler/>

  </tbody>

                
            </table>
        

            
        </div>
    </body>
</html>
