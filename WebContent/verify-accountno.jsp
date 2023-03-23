<%@page import="java.sql.*"%>
<body onload="activeLink('transfer')">
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("verify");
String ran=request.getParameter("accountno");
ps.setString(1,ran);
ResultSet rst=ps.executeQuery();
if(rst.next()) {
	session.setAttribute("rname",rst.getString(1));
	session.setAttribute("ran",ran);
	response.sendRedirect("transfer-money.jsp");
	return;
}
%>
</body>
<jsp:include page="account-transfer.jsp" />
<div align="center">
	<h2 style="color:red">Dear user, given account number does not exist</h2>
</div>