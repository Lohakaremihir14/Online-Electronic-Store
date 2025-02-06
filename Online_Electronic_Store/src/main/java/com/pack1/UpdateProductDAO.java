package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
	public int updateProduct(ProductBean pb)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product set PPRICE=?,PQTY=? where PCODE=?");
			pstmt.setString(1,pb.getpPrice());
			pstmt.setString(2,pb.getpQuantity());
			pstmt.setString(3,pb.getpCode());
			rowCount=pstmt.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
