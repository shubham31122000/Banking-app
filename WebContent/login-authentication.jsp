<%@page import="java.sql.*"%>
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("login");
ps.setString(1,request.getParameter("uid"));
ps.setString(2,request.getParameter("pass"));
ResultSet rst=ps.executeQuery();
if(rst.next()) {
	String username=rst.getString(3);
	String accountno=rst.getString(4);
	session.setAttribute("username",username);
	session.setAttribute("accountno",accountno);
	response.sendRedirect("/bankapp");
}
else {
	%>
	<jsp:include page='login.jsp' />
	<div align='center'>
		<h2 style='color:red'>User id or password is incorrect</h2>
	</div>
	<%
}
%>