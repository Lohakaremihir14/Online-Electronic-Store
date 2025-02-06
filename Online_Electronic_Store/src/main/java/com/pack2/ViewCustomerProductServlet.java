package com.pack2;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.pack1.ViewProductDAO;

@WebServlet("/view2")
public class ViewCustomerProductServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession session=req.getSession(false);
		
		if(session==null)
		{
			req.setAttribute("msg","Session Expired!!!");
			RequestDispatcher rd=req.getRequestDispatcher("CustomerLogin.html");
			rd.forward(req, res);
		}
		else
		{
			ArrayList<ProductBean> al=new ViewCustomerProductDAO().retriveProducts();
			session.setAttribute("ProductsList", al);
			RequestDispatcher rd=req.getRequestDispatcher("ViewProduct.jsp");
			rd.forward(req, res);
		}
	}
}
 