
package com.xworkz.airport.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AirportWebInit extends AbstractAnnotationConfigDispatcherServletInitializer {
    public AirportWebInit(){
        System.out.println("AirportWebInit created....");
    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{AirportConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/send","/go","/contact"};
    }
}

