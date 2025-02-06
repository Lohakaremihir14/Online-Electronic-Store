package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO
{
	public int delete(ProductBean pb)
	{
		int rowCount=0;
		
		try 
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("delete from product where pcode=?");
			pstmt.setString(1,pb.getpCode());
			rowCount=pstmt.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return rowCount;
	}
}
