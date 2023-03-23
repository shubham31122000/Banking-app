<%@page import="java.sql.*,com.shubh.Balance"%>
<%@include file='menu.jsp' %>
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("balance");
int amount=Balance.getBalance((String)session.getAttribute("accountno"),ps);
%>
<body onload="activeLink('balance')">
<div class='dv'>
	<h1>Dear user, your current balance is <span style='color:green'>&#8377;<%=amount %></span></h1>
</div>
</body>