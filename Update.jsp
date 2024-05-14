<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="update product set price=?,cat=?,cmp=? where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(4, name);
ps.setString(1, price);
ps.setString(2, cat);
ps.setString(3, cmp);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
if(i>0)
{
	rd.include(request,response);
	out.println("updated");
}
else
{
	rd.include(request,response);
	out.println("not updated");
}
con.close();
%>