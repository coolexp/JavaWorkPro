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
        //�õ���ǰServlet������·��   
        String pathName =request.getServletPath();   
        // request.getContextPath();�õ���Ŀ����   
        System.out.println("pathName:"+pathName);   
        //�õ������Action����   
        int index = pathName.indexOf(".");   
        String ActionName = pathName.substring(1, index);   
        System.out.println(ActionName);   
        //��ȡ����ʱ����   
        String ActionClassName = this.getInitParameter(ActionName);   
        //�õ�Action����   
        Action action = ActionFactory.getActionFactory().getAction(ActionClassName);   
        //ִ��Action��execute�õ�Ҫ���ص�URL·��   
        String url = action.execute(request, response);   
        if(url==null){   
            request.getRequestDispatcher("error.jsp").forward(request, response);      
        }else{   
            request.getRequestDispatcher(url).forward(request, response);   
        }   
    }  

}
