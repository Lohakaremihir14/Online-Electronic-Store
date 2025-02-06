package com.pack2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
	public CustomerBean retriveData(String uname,String upwd)
	{
		CustomerBean bean=null;
		
		try 
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where uname=? and pword=?");
			pstmt.setString(1, uname);
			pstmt.setString(2, upwd);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				bean=new CustomerBean();
				bean.setcUsername(rs.getString(1));
				bean.setcPassword(rs.getString(2));
				bean.setcFname(rs.getString(3));
				bean.setcLname(rs.getString(4));
				bean.setcAddress(rs.getString(5));
				bean.setcMailId(rs.getString(6));
				bean.setcPhoneNo(rs.getString(7));
				
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return bean;
	}
}
