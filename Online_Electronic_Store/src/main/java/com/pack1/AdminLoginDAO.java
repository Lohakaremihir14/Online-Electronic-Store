package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;

public class AdminLoginDAO
{
	public AdminBean checkAdminLogin(String aUsername,String aPassword)
	{
		AdminBean abean=null;
		
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from admin where uname=? and pword=?");
			pstmt.setString(1,aUsername);
			pstmt.setString(2,aPassword);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				abean=new AdminBean();
				abean.setaUserName(rs.getString(1));
				abean.setaPassword(rs.getString(2));
				abean.setaFname(rs.getString(3));
				abean.setaLname(rs.getString(4));
				abean.setaAddress(rs.getString(5));
				abean.setaMailId(rs.getString(6));
				abean.setaPhoneNo(rs.getString(7));
				
			}
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return abean;
	}
}
