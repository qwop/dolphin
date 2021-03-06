package com.tan.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tan.util.GetLinks;
import com.tan.util.GetURL;

public final class GetLinksServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected final void doGet(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException {
		this.doPost(request, response);
	}
	@Override
	protected final void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getParameter("url").trim();
		String[] suffixs = request.getParameterValues("suffixs");
		
		if (isEmpty(url) || suffixs == null) {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		} else {
			if (!isEmpty(url)) {
				url = GetURL.checkUrl(url);
				request.setAttribute("source", new GetLinks(url).dump(suffixs));
//				} catch (Exception e) {
//					request.setAttribute("source", e.getMessage());
//					request.getRequestDispatcher("error.jsp").forward(request, response);
//					return;
//				}
			}
			else request.setAttribute("source", "");
			request.getRequestDispatcher("geturl.jsp").forward(request,response);
		}
		
	}
	
	private final boolean isEmpty(final String value) {
		if (value == null || value.trim().length() == 0) {
			return true;
		}
		return false;
	}
}
