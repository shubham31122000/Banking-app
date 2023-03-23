<%@page import="java.sql.*"%>
<%
String amount=request.getParameter("amount");
PreparedStatement ps=(PreparedStatement)application.getAttribute("deposit");
ps.setString(1,amount);
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
%>
<jsp:include page="deposit-money.jsp" />
<div class='ddv'>
	<h2>Dear user, amount <span style='color:green'>&#8377;<%=amount %></span> is credited into your account</h2>
</div>