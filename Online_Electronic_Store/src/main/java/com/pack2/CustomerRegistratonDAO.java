package com.pack2;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegistratonDAO 
{
	public int registerCustomer(CustomerBean cb)
	{
		int rowCount=0;
		
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			pstmt.setString(1,cb.getcUsername());
			pstmt.setString(2,cb.getcPassword());
			pstmt.setString(3,cb.getcFname());
			pstmt.setString(4,cb.getcLname());
			pstmt.setString(5,cb.getcAddress());
			pstmt.setString(6,cb.getcMailId());
			pstmt.setString(7,cb.getcPhoneNo());
			
			rowCount=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return rowCount;
	}
}
