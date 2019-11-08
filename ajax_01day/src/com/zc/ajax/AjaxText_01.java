package com.zc.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxText_01 extends HttpServlet{

	public void service (HttpServletRequest request , HttpServletResponse response) 
throws ServletException , IOException {
	response.setContentType("text/html ; charset = UTF-8");	
	PrintWriter writer = response.getWriter();
	//
	String uri = request.getRequestURI() ;
	String path = uri.substring(
						uri.lastIndexOf("/"),
						uri.lastIndexOf("."));
		if (path.equals("/get_text")) {
			writer.println("北冥有鱼，其名为鲲");
			
		}
		writer.close();
		
	}
}
