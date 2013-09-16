<%-- 
    Document   : MenuResult
    Created on : Sep 11, 2013, 10:36:02 PM
    Author     : Chumples
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill</title>
    </head>
    <body style="color:red;">
        <div>
            <h1 style="color:green;">Order Summary</h1>
            <Form method="Post" action ="RestaurantMenuController">
                <h2>Items Ordered:</h2> 
                <br>	
                <%
                    HashMap menu = (HashMap) request.getAttribute("menu");
                    Iterator it = menu.entrySet().iterator();
                    while (it.hasNext())
                    {
                        Map.Entry pairs = (Map.Entry) it.next();
                %>

                <%= "<strong>" + pairs.getKey() + "</strong>" + " - " + pairs.getValue()%> <br>
                <img src ="images/<%=pairs.getKey()%>.jpg">
                <br><br>
                <%
                        it.remove();
                    }
                %>

                <h2>Amount Due </h2>                
                Food and Beverage: $<%= request.getAttribute("orderSubTotal")%> 
                <br>
                5% Sales Tax: $<%= request.getAttribute("tax")%> 
                <br>
                Total Bill: $<%= request.getAttribute("orderGrandTotal")%>
                <br>
                <br>
            </form>	
        </div>
    </body>
<%--     Doesn't work!!!!!!
    <a href="MenuCheckboxes.jsp">Back
--%>
</html>