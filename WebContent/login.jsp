<link href='CSS/style.css' rel='stylesheet'>
<img src='images/bank.jpg' height='35%' width='100%'>
<hr style='border:2px dashed red'>
<form action='login-authentication.jsp' method='post'>
	<table class='login'>
		<tr>
			<td colspan='2'>
				<div align='center' style="height:32px;font-size:22px;color:white;background-color:blue"><label>User Login Form</label></div>
			</td>
		</tr>
		<tr>
			<td class='logintd'>Enter User Id</td>
			<td class='logintd'>
				<%
				String uid=request.getParameter("uid");
				if(uid==null) {
					uid="";
				}
				%>
				<input type='text' id='uid' name='uid' value='<%=uid %>' class='tb'>
			</td>
		</tr>
		<tr>
			<td class='logintd'>Enter Password</td>
			<td class='logintd'>
				<input type='password' id='pass' name='pass' class='tb'>
			</td>
		</tr>
		<tr>
			<td class='logintd' colspan='2' align='right'>
				<button class='bt'>Login</button>
			</td>
		</tr>
	</table>
</form>