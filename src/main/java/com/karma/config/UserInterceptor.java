package com.karma.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserInterceptor implements HandlerInterceptor {

    //企图进入个人主页或评论或发表游记且Session内没有信息
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler)throws Exception {
        HttpSession session = req.getSession();
        if((req.getRequestURI().contains("admin")||req.getRequestURI().contains("addCommend")||req.getRequestURI().contains("addTripNote")||req.getRequestURI().contains("toaddscenebook"))&&session.getAttribute("userLoginInfo")==null){
            req.getRequestDispatcher("tologin").forward(req,res);
            return false;
        }
        return true;
    }

}
