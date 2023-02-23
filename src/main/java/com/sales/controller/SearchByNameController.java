package com.sales.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sales.service.SearchByNameService;

@WebServlet("/SearchByNameController")
public class SearchByNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchName=request.getParameter("query");
		String productType=request.getParameter("productType");
		String searchId=request.getParameter("searchId");
		System.out.println("searchText="+searchName);
		System.out.println("searchId="+searchId);
		SearchByNameService spbn=new SearchByNameService();
		ArrayList<String> al=spbn.getSearchResults(searchName,productType,searchId);
		String aId="";
		if(searchName!=null)aId="a2";
		else aId="a1";
	    for(int i=0;i<al.size();i++) 
			response.getWriter().append("<a id="+'"'+aId+'"'+" href="+'"'+"#"+'"'+" class="+'"'+"list-group-item list-group-item-action border-1"+'"'+">"+ al.get(i)+"</a>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
