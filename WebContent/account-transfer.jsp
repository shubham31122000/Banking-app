<body onload="activeLink('transfer')">
	<form action='verify-accountno.jsp'>
<%@include file='menu.jsp' %>
<%
String an=request.getParameter("accountno");
if(an==null) {
	an="";
}
%>
		<table class='ta'>
			<tr>
				<td class='la td'>Enter account number</td>
				<td class='td'><input type='text' class='tb' value='<%=an %>' id='accountno' name='accountno'></td>
				<td class='td'><button onclick='return checkNo()' class='bt'>Submit</button></td>
			</tr>
		</table>
		<div class='ddv'>
			<h2 style='color:red' id='msg'></h2>
		</div>
	</form>
</body>