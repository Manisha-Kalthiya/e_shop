<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
String qr="delete from product where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
if(i>0)
{
	rd.include(request,response);
	out.println("deleted");
}
else
{
	rd.include(request,response);
	out.println("not deleted");
}
con.close();
%>