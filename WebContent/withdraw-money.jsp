<%@include file='menu.jsp' %>
<%
String amt=request.getParameter("amount");
if(amt==null) {
	amt="";
}
%>
<body onload="activeLink('withdraw')">
	<form action='withdraw.jsp'>
		<table class='ta'>
			<tr>
				<td class='la td'>Enter money to be withdrawn</td>
				<td class='td'><input type='text' class='tb' value='<%=amt%>' id='amount' name='amount'></td>
				<td class='td'><button onclick='return checkLimit()' class='bt'>Withdraw Money</button></td>
			</tr>
		</table>
		<div class='ddv'>
			<h2 style='color:red' id='msg'></h2>
		</div>
	</form>
</body>