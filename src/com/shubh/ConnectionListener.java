package com.shubh;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebListener;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;

@WebListener
public class ConnectionListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent evt) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdatabase","root","Sam@31122000");
			System.out.println("Connected...");
			ServletContext context=evt.getServletContext();
			PreparedStatement pslogin=cn.prepareStatement("select * from accountinfo where userid=? and password=?");
			context.setAttribute("login",pslogin);
			PreparedStatement psbalance=cn.prepareStatement("select amount from accountinfo where accountno=?");
			context.setAttribute("balance",psbalance);
			PreparedStatement psdeposit=cn.prepareStatement("update accountinfo set amount=amount+? where accountno=?");
			context.setAttribute("deposit",psdeposit);
			PreparedStatement pswithdraw=cn.prepareStatement("update accountinfo set amount=amount-? where accountno=?");
			context.setAttribute("withdraw",pswithdraw);
			PreparedStatement psverify=cn.prepareStatement("select username from accountinfo where accountno=?");
			context.setAttribute("verify",psverify);
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
	}
	public void contextDestroyed(ServletContextEvent arg0) {}
}
