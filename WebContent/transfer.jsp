<%@page import="java.sql.*,com.shubh.Balance"%>
<jsp:include page="transfer-money.jsp" />
<%
String san=(String)session.getAttribute("accountno");
PreparedStatement ps=(PreparedStatement)application.getAttribute("balance");
int curAmount=Balance.getBalance(san,ps);
int amount=Integer.parseInt(request.getParameter("amount"));
if((amount+5000)>curAmount) {
	%>
	<div class='ddv'>
		<h2 style='color:red'>Dear user, you do not have sufficient balance</h2>
	</div>
	<%
	return;
}
PreparedStatement ps1=(PreparedStatement)application.getAttribute("withdraw");
ps1.setInt(1,amount);
ps1.setString(2,san);
ps1.executeUpdate();

PreparedStatement ps2=(PreparedStatement)application.getAttribute("deposit");
ps2.setInt(1,amount);
ps2.setString(2,(String)session.getAttribute("ran"));
ps2.executeUpdate();
%>
<div class='ddv'>
	<h2>Dear user, amount <span style='color:green'>&#8377;<%=amount%></span> has been transferred successfully from your account to <%=session.getAttribute("rname") %></h2>
</div>