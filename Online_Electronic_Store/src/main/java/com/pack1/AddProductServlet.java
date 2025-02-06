package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		try
		{

			HttpSession session=req.getSession();
			if(session==null)
			{
				req.setAttribute("msg","Session Experied");
				RequestDispatcher rd=req.getRequestDispatcher("AdminLogin.html");
				rd.forward(req, res);
			}
			else
			{
				ProductBean pbean=new ProductBean();
				pbean.setpCode(req.getParameter("pcode")); 
				pbean.setpName(req.getParameter("pname")); 
				pbean.setpCompany(req.getParameter("pcom")); 
				pbean.setpPrice(req.getParameter("price")); 
				pbean.setpQuantity(req.getParameter("qty")); 
				
				int rowCount=new AddProductDAO().insertData(pbean);
				
				if(rowCount>0)
				{
					req.setAttribute("msg","Product details added Succesfully");
					RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
					rd.forward(req, res);
				}
				else //It will output in console 
				{
					System.out.println("Data  NOT Inserted");
				}
			}
			
		}
		catch(Exception e)
		{
			req.setAttribute("msg","Duplicates Pcode are Not Allowed!!");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}
