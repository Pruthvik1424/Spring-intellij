package com.xworkz.rcb.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ApplicationContext extends AbstractAnnotationConfigDispatcherServletInitializer {

    public ApplicationContext()
    {
        System.out.println("Running no args const in ApplicationContext");
    }
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] {SpringPrimaryConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[0];
    }
}
