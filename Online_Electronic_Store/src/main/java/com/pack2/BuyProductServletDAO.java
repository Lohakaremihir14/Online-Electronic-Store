/*package com.pack2;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pack1.DBConnect;


public class BuyProductServletDAO 
{
	public int buyProduct(ProductBean pb)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product set PQTY=? where PCODE=?");
			pstmt.setString(1,pb.getpPrice());
			pstmt.setString(2,pb.getpCode());
			rowCount=pstmt.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();  
		}
		return rowCount;
	}

}
*/