package com.pack2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clog")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		CustomerLoginDAO clDAO=new CustomerLoginDAO();
		CustomerBean cbean=clDAO.retriveData(req.getParameter("cname"),req.getParameter("cpwd"));
		
		if(cbean==null)
		{
			req.setAttribute("msg","Invalid Credentials!!!");
			RequestDispatcher rd=req.getRequestDispatcher("CustomerLogin.html");
			rd.forward(req, res);
		}
		else
		{
			HttpSession session=req.getSession();
			session.setAttribute("cbean",cbean);
			RequestDispatcher rd=req.getRequestDispatcher("CustomerHome.jsp");
			rd.forward(req, res);
		}
	}
}


