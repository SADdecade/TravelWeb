package com.karma.listener;

import com.karma.pojo.City;
import com.karma.service.CityService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class CityListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CityService service = (CityService)context.getBean("CityServiceImpl");
        List<City> cities = service.queryAllCity();
        servletContextEvent.getServletContext().setAttribute("citylist",cities);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
