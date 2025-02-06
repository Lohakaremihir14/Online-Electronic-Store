package com.pack1;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionLitstener implements HttpSessionListener,HttpSessionAttributeListener
{
	@Override
	public void sessionCreated(HttpSessionEvent se) 
	{
		System.out.println("Session Object Created");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) 
	{
		System.out.println("Session Object Destroted");
	}
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent se)
	{
		System.out.println("Attribute Added to the Session");
	}
	 
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) 
	{
		System.out.println("Attribute Removed to the Session");
	}
}
