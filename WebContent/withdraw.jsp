<%@page import="java.sql.*,com.shubh.Balance"%>
<jsp:include page="withdraw-money.jsp" />
<%
String ac=(String)session.getAttribute("accountno");
PreparedStatement ps=(PreparedStatement)application.getAttribute("balance");
int curAmount=Balance.getBalance(ac,ps);
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
ps1.setString(2,ac);
ps1.executeUpdate();
%>
<div class='ddv'>
	<h2>Dear user, amount <span style='color:green'>&#8377;<%=amount%></span> is debited from your account</h2>
</div>