package org.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.ServletConfig;

public class HelloServlet implements Servlet{
    
    public void init(ServletConfig config) throws ServletException{
	System.out.println("this is init!");
    }

    public ServletConfig getServletConfig(){
	return null;
    }

    public String getServletInfo(){
	return null;
    }

    public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException{
	PrintWriter out = response.getWriter();
	out.print("hello World!");
    }

    public void destroy(){
        System.out.println("this is destroy!");
    }
}