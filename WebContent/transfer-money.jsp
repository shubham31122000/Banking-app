<%@include file='menu.jsp' %>
<div align="center">
	<h2 style="color:green">
		You are transferring money to "<%=session.getAttribute("rname") %>"
	</h2>
</div>
<%
String amt=request.getParameter("amount");
if(amt==null) {
	amt="";
}
%>
<body onload="activeLink('transfer')">
	<form action='transfer.jsp'>
		<table class='ta'>
			<tr>
				<td class='la td'>Enter money to be send to recipient:</td>
				<td class='td'><input type='text' class='tb' value='<%=amt%>' id='amount' name='amount'></td>
				<td class='td'><button onclick='return checkLimit()' class='bt'>Transfer Money</button></td>
			</tr>
		</table>
		<div class='ddv'>
			<h2 style='color:red' id='msg'></h2>
		</div>
	</form>
</body>