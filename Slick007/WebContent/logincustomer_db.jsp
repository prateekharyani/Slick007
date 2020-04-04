<%@page import="dto.Customer"%>
<%@page import="dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer_db</title>
    </head>
    <body>
        <%
            
            String id = request.getParameter("customerID");
            String password = request.getParameter("customerPassword");
            Customer loginFormObject=new Customer(id,password);    
            CustomerDAO obj = new CustomerDAO();
                boolean i=obj.checkCustomerCredentials(loginFormObject);
                              
                    if(i)
                    {
                        session.setAttribute("customerID",loginFormObject.getId());
        %>
        <jsp:forward page="index_customer.jsp"></jsp:forward>
        <%
                    }
                    else
                    {
                        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning' ,  'Either you have been blocked or you have entered invalid user-id or password !!!' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
%> 
<jsp:include page="login_form.jsp"/>
        <%
            }
            %>
    </body>
</html>
