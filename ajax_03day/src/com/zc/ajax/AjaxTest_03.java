package com.zc.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/*")
public class AjaxTest_03 extends HttpServlet{
	public void  service(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{
		response.setContentType("text/script ; charset = UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter writer =  response.getWriter() ;
		//获取请求资源路径
		String ura = request.getRequestURI();
		String path = ura.substring(
							ura.lastIndexOf("/"),
							ura.lastIndexOf("."));
		System.out.println(path);
		if (path.equals("/get_text")) {
			writer.println("Life is the flower for which love is the honey. 生命如花 ， 爱情是蜜--雨果");
		} 
		else if(path.equals("/post_text")){
			String name = request.getParameter("uname");
			System.out.println(name);
			writer.println("Out with the old , in with the new. " + name);
		}
		else if(path.equals("/check_name")) {
			String name = request.getParameter("uname");
			//模拟一个耗时操作 
			if (1==1) {
				try {
					Thread.sleep(2000); //模拟网络延时 出现正在检查的字样
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			System.out.println(name);
			if ("luffy".equals(name)) {
				writer.println("用户名不可用");
			} else {
				writer.println("用户名可用");
			}
		}
		writer.close();
	}
	
}
