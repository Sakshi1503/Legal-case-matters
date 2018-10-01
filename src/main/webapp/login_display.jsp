
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <!-- <%=request.getParameter("display")%> -->
            <% String name=(String)session.getAttribute("adminLoggedIn"); 
            out.println(name);
            %>
            
        </h1>
    </body>
</html>
