<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
%>
<form action="Update.jsp">
<%=name %>
<input type="hidden" name="name" value="<%=name %>" /><br>
PRICE<input type="text" name="price" value="<%=price %>" /><br>
CAT<input type="text" name="cat" value="<%=cat %>" /><br>
CMP<input type="text" name="cmp" value="<%=cmp %>" /><br>
<input type="submit" value="Update" />
</form>