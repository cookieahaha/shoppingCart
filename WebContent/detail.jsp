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

<P><%= p.getId()%></P>
<P><%= p.getName() %></P>
<P><%= p.getAmount() %></P>
<P><%= p.getPrice()%></P>


<td> 
<form action="Control" enctype="UTF-8" method="get">
<p><input type="submit" value="add to cart" ></p>
<p><input type="hidden" name="action" value="add"></p>
<p><input type="hidden" name="id" value="<%= p.getId() %>"></p>
</form> 
</td>

</body>
</html>