package com.zc.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxTest_02 extends HttpServlet {
	
	public void service(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{
		response.setContentType("text/script ; charset = UTF-8");
		PrintWriter writer = response.getWriter();
		String abc = request.getRequestURI();
		System.out.println(abc);
		String path = abc.substring(
							abc.lastIndexOf("/"),
							abc.lastIndexOf("."));
		System.out.println(path);
		if (path.equals("/get_text")) {
			writer.println("别嫌我幼稚，对不熟的人我才用脑子");
		}
		writer.close();
	}
}
