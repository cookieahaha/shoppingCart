<%@ page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="Shift_JIS"%>
    <%@ page import = "me.kukkii.shoppingcart.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>Insert title here</title>
</head>
<body>
<% 
Product p = (Product)request.getAttribute("product");
%>

<h1>the item u r putting to the cart is</h1>
<table>
<tr>
<td><img src=" <%= p.getPic() %>"></td>
<td>
<table>
<tr><P>id: <%= p.getId()%></P></tr>
<tr><P>name: <%= p.getName() %></P></tr>
<tr><P>stock: <%= p.getAmount() %></P></tr>
<tr><P>price: <%= p.getPrice()%></P></tr>
</table>
</td>
</tr>
</table>

<form action="Controller" enctype="UTF-8" method="get">
<p><input type="submit" value="add to cart" ></p>
<p><input type="hidden" name="action" value="add"></p>
<p><input type="hidden" name="id" value="<%= p.getId() %>"></p>
</form> 


</body>
</html>