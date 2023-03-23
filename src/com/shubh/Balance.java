package com.shubh;

import java.sql.*;

public class Balance {
	
	public static int getBalance(String accountno, PreparedStatement ps) {
		int amount=0;
		try {
			ps.setString(1,accountno);
			ResultSet rst=ps.executeQuery();
			rst.next();
			amount=rst.getInt(1);
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		return amount;
	}
}
