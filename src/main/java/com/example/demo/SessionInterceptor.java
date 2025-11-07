package com.example.demo;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class SessionInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
        HttpSession session = request.getSession(false);

        String uri = request.getRequestURI();

        // URLs publicas que no requieren de Login
        if(uri.contains("/login") || uri.contains("/css") || uri.contains("/imag")){
            return true;
        }

        //Verificar sesion
        if (session != null && session.getAttribute("userLogged") != null){
            return true;
        }

        response.sendRedirect("/login");
        return false;
    }
}
