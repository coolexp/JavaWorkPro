package com.nikoer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControlServlet
 */
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
        //得到当前Servlet的请求路径   
        String pathName =request.getServletPath();   
        // request.getContextPath();得到项目名字   
        System.out.println("pathName:"+pathName);   
        //得到请求的Action名字   
        int index = pathName.indexOf(".");   
        String ActionName = pathName.substring(1, index);   
        System.out.println(ActionName);   
        //获取运行时参数   
        String ActionClassName = this.getInitParameter(ActionName);   
        //得到Action对象   
        Action action = ActionFactory.getActionFactory().getAction(ActionClassName);   
        //执行Action的execute得到要返回的URL路径   
        String url = action.execute(request, response);   
        if(url==null){   
            request.getRequestDispatcher("error.jsp").forward(request, response);      
        }else{   
            request.getRequestDispatcher(url).forward(request, response);   
        }   
    }  

}
