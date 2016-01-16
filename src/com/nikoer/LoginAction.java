package com.nikoer;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");   
        String userPwd = request.getParameter("userPwd");   
        if (userName.equals("netjava") && userPwd.equals("netjava")) {   
            request.setAttribute("userName", userName);   
            return "main.jsp";   
        }
        return "login.jsp"; 
	}

}
