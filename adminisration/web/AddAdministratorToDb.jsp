<%-- 
    Document   : AddAdministratorToDb
    Created on : Dec 3, 2021, 3:50:08 PM
    Author     : BIGLINKS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%@taglib uri= "/WEB-INF/tlds/RegisterHealthCenterTld" prefix="registerhealthcentertld" %>%>
      <%@taglib uri= "/WEB-INF/tlds/RegisterHealthCenterTld" prefix="AddHealthOfficer" %>%>
        
        <% String name = request.getParameter("myname"); %>
           <% 
               String centre = request.getParameter("centre"); 
               
               String email = request.getParameter("email"); 
               String password = request.getParameter("password");
               String confirm = request.getParameter("confirmpassword"); 

           // out.println("The value are  name:"+name+" Center:"+centre+" Email:"+email+" password:" +password+""+confirm);
                                           
           %>
           <AddHealthOfficer:AddHealthAdminToDb
               table="administrator" values="<%=name +','+email +','+centre+','+password+','+confirm %>">
                   
               </AddHealthOfficer:AddHealthAdminToDb>
    </body>
</html>
