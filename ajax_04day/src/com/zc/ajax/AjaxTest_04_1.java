package com.zc.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zc.stock.bean.Stock;

import net.sf.json.JSONArray;

public class AjaxTest_04_1 extends HttpServlet {
	public void service(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{
		response.setContentType("text/script ; charset = UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String uri = request.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		if (action.equals("/salary")) {
			String flight = request.getParameter("eId");
			if (flight.equals("T10001")) {
				out.print("实际工资：￥10000<br/>个税：￥2500");
			} else {
				out.print("实际工资：￥20000<br/>个税：￥5000");
			}
			//System.out.println(flight);
		}
		else if (action.equals("/quoto")) {
			Random r = new Random();
			List<Stock> stock = new ArrayList();
			for (int i = 0; i < 8; i++) {
				Stock s = new Stock();
				s.setCode("60001" + r.nextInt(10));
				s.setName("国寿嘉年" + r.nextInt(10));
				DecimalFormat df = new DecimalFormat("0.00");
				double Price = Double.parseDouble(
						df.format(100*r.nextDouble()));
				s.setPrice(Price);
				stock.add(s);
			}
			JSONArray jsonArr = JSONArray.fromObject(stock);
			String jsonStr = jsonArr.toString();
			//System.out.println(jsonStr);
			out.println(jsonStr);
		}
		out.close();
	}
}
