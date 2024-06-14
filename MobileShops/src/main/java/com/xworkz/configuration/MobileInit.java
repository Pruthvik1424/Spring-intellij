package com.xworkz.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MobileInit extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{MobileConfiguration.class};
    }


    @Override
    protected String[] getServletMappings() {
        return new String[0];
    }

    public MobileInit()
    {
        System.out.println("running mobileInit");
    }
}
