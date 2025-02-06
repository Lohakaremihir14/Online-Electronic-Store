package com.pack2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/crs")
public class CustomerRegistrationServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		CustomerBean cbean=new CustomerBean();
		
		cbean.setcUsername(req.getParameter("uname"));
		cbean.setcPassword(req.getParameter("pwd"));
		cbean.setcFname(req.getParameter("fname"));
		cbean.setcLname(req.getParameter("lname"));
		cbean.setcAddress(req.getParameter("adrs"));
		cbean.setcMailId(req.getParameter("mid"));
		cbean.setcPhoneNo(req.getParameter("mobile"));
		
		CustomerRegistratonDAO cDAO=new CustomerRegistratonDAO();
		
		int rowCount=cDAO.registerCustomer(cbean);
		
		if(rowCount>0)
		{
			HttpSession session=req.getSession();
			session.setAttribute("cbean",cbean);
			RequestDispatcher rd=req.getRequestDispatcher("CustomerHome.jsp");
			rd.forward(req, res);
		}
	}
}
