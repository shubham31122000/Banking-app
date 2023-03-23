<div>
	 <img src='images/thank1.jpg' width="100%" height="40%" >
</div>
<hr style='border:2px solid green'><br>
<div style='margin-top:30px;color:red' align='center'>
	<h2><%=session.getAttribute("username") %>,&nbsp;Thank You for using app, <br><br>You have successfully logged out</h2>
</div>
<div style='margin-top:30px;font-family:lucida bright' align='center'>
	<a href='/bankapp' style='font-size:20px;color:#8E44AD'>Click here for more transaction</a>
</div>
<%
session.invalidate();
%>