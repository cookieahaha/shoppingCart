<%@ page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="Shift_JIS"%>
    <%@ page import = "me.kukkii.shoppingcart.Product" %>
    <%@ page import = "me.kukkii.shoppingcart.ProductManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>Insert title here</title>
</head>
<body>

<table border="1" cellpadding="5" cellspacing="0">
<tr>

<td></td>

<td>
<form action="Controller" enctype="UTF-8" method="get">
<input type="submit" value="id" >
<input type="hidden" name="action" value="sort" >
<input type="hidden" name="sortType" value="id" >
</form>
</td>

<td>
<form action="Controller" enctype="UTF-8" method="get">
<input type="submit" value="name" >
<input type="hidden" name="action" value="sort" >
<input type="hidden" name="sortType" value="name" >
</form>
</td>

<td>
<form action="Controller" enctype="UTF-8" method="get">
<input type="submit" value="price" >
<input type="hidden" name="action" value="sort" >
<input type="hidden" name="sortType" value="price" >
</form>
</td>

<td>
<form action="Controller" enctype="UTF-8" method="get">
<input type="submit" value="amount" >
<input type="hidden" name="action" value="sort" >
<input type="hidden" name="sortType" value="amount" >
</form>
</td>

</tr>

<%
for(Product p: ProductManager.getManager().getAll()){ %>
<tr>
<td><img src=" <%= p.getPic() %>"></td>
<td><%=  p.getId() %></td>
<td><%=  p.getName() %></td>
<td><%=  p.getPrice()%></td>
<td><%=  p.getAmount()%></td>

<td> 
<form action="Controller" enctype="UTF-8" method="get">
<p><input type="submit" value="detail" ></p>
<p><input type="hidden" name="action" value="detail"></p>
<p><input type="hidden" name="id" value="<%= p.getId() %>"></p>
</form> 
</td>

</tr>
<% }
%>

</table>

</body>
</html>