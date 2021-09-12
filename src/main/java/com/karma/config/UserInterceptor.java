package com.karma.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserInterceptor implements HandlerInterceptor {

    //企图进入个人主页或评论或发表游记且Session内没有信息
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler)throws Exception {
        HttpSession session = req.getSession();
        List<String> admin = Arrays.asList("admin","addCommend","addTripNote","toaddscenebook" );
        boolean b = session.getAttribute("userLoginInfo")==null;

        for(String uri : admin){
            if (req.getRequestURI().contains(uri)){
                if(b){
                    req.getRequestDispatcher("tologin").forward(req,res);
                    return false;
                }
            }
        }
        return true;
    }

}
