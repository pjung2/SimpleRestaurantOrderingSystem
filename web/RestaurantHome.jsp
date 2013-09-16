<%-- 
    Document   : RestaurantHome
    Created on : Sep 11, 2013, 9:04:39 PM
    Author     : Chumples
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PJ's Pizzaria</title>
     </head>
    <body style="color:red;">
        <div>           
            <h1 style="color:green;">Welcome to PJ's Pizzeria</h1> 
           <form method ="post" action="RestaurantMenuController">
               <h2>Click below to start your order</h2>
                <input id="MenuCheckboxes" name="MenuCheckboxes" type="submit" value="Order">
            </form>
        </div>
    </body>
</html>
