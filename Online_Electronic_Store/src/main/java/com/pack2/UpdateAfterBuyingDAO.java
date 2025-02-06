package com.pack2;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateAfterBuyingDAO 	
{
	public int updateQty(String qty,String pcode)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product set PQTY=? where PCODE=?");
			pstmt.setString(1,qty);
			pstmt.setString(2,pcode);
			rowCount=pstmt.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
