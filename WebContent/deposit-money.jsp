<%@include file='menu.jsp' %>
<body onload="activeLink('deposit')">
	<form action='deposit.jsp'>
		<table class='ta'>
			<tr>
				<td class='la td'>Enter money to be deposit</td>
				<td class='td'><input type='text' class='tb' name='amount'></td>
				<td class='td'><button class='bt'>Deposit Money</button></td>
			</tr>
		</table>
	</form>
</body>