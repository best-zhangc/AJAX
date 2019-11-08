package com.zc.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	//@WebServlet("/servlet")
public class AjaxTest_04 extends HttpServlet{
	public void service(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{
		response.setContentType("text/script ; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		//System.out.println(userName);
		if ("zj".equals(userName) && "123".equals(pwd)) {
			out.print(true);
		}else {
			out.print(false);
		}
		out.close();
	}
	
}
