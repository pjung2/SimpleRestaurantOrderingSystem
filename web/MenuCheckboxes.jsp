<%-- 
    Document   : MenuCheckboxes
    Created on : Sep 11, 2013, 9:40:14 PM
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
        <title>Place Order</title>
    </head>
    <body style="color:red;">
        <div>
	    <h1 style="color:green;">Menu</h1>
	    <Form method="Post" action ="RestaurantMenuController">
		<%
		    HashMap menu = (HashMap) request.getAttribute("menu");
		    Iterator it = menu.entrySet().iterator();
		    while (it.hasNext())
                    {
		Map.Entry pairs = (Map.Entry) it.next();%>

		<input type="checkbox" id ="<%=pairs.getKey()%>" name="<%= pairs.getKey()%>"  value ="test">
		<%= pairs.getKey() + " - " + pairs.getValue()%>
		<br>
		<%
			it.remove();
		    }
		%>
                </br>
                </br>
		<input id ="submit" type ="Submit" value ="Place Order" name ="placeOrder">
	    </form>	
        </div>
    </body>
</html>