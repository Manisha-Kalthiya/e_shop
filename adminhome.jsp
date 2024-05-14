<h1 align="center">welcome to admin panel</h1>
<%
String id=(String)session.getAttribute("id");
%>
<%="welcome "+id%>
<a href="addpro.html">add product</a>
<a href="show.jsp">show product</a>