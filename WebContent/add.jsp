<%@ page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="Shift_JIS"%>
        <%@ page import = "me.kukkii.shoppingcart.Product" %>
            <%@ page import = "me.kukkii.shoppingcart.Cart" %>
                        <%@ page import = "me.kukkii.shoppingcart.ProductManager" %>
            
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>Insert title here</title>
</head>
<body>

<h1>Your Cart has</h1>

<%
Cart cart = (Cart)request.getAttribute("cart");
%>

<table border="1" cellpadding="5" cellspacing="0">
<tr>
<td>name</td>
<td>amount</td>
<td>price</td>

<%
for(String id :cart.getAll()){
%>
<tr>
<td> <%= ProductManager.getManager().lookUp(id).getName() %> </td>
<td>  <%= cart.getAmount(id) %> </td>
<td> <%= ProductManager.getManager().lookUp(id).getPrice()*cart.getAmount(id) %> </td>
</tr>
  <%
}
%>

</table> 

<form action="Controller" enctype="UTF-8" method="get">
<p><input type="submit" value="ok" ></p>
<p><input type="hidden" name="action" value="list"></p>
</form> 

</body>
</html>