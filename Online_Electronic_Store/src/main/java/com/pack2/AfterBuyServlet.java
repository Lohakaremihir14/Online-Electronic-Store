package com.pack2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/pqnty")
public class AfterBuyServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
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
			String pcode=req.getParameter("pcode");
			ProductBean pb=new ProductBean();
			
			int aqnty=Integer.parseInt(req.getParameter("pqnty"));
			int rqnty=Integer.parseInt(req.getParameter("reqQ"));
			
			String uquty=String.valueOf(aqnty-rqnty);
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductsList");
			Iterator<ProductBean> i=al.iterator();
			if(rqnty<=aqnty)
			{
				int rowCount=new UpdateAfterBuyingDAO().updateQty(uquty, req.getParameter("pcode"));
				 if(rowCount>0)
				   {
					   while( i.hasNext())
						  {
							 pb=i.next();
							 if(pcode.equals(pb.getpCode()))
							 {
								 break;
							 }
						  }
					   req.setAttribute("pbean",pb);
					   req.setAttribute("rqnty",rqnty);
					   RequestDispatcher rd=req.getRequestDispatcher("OrderConfirmed.jsp"); 
					   rd.forward(req, res);
				   }
				 
			   }
			   else
			   {
				   System.out.println("insufficient qnty");
                   new ViewCustomerProductServlet().doGet(req, res);
               }
		
		}	
	}	
}
	