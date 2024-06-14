package com.xworkz.showroom.configurations;

import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ShowRoomWebInit extends AbstractAnnotationConfigDispatcherServletInitializer implements WebMvcConfigurer {

  public ShowRoomWebInit(){
      System.out.println("Showroom Web init created");
  }
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{ShowRoomConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    @Override
    public void configureDefaultServletHandling( DefaultServletHandlerConfigurer configurer ){
      System.out.println("Registered default servlet handler configuration");
    configurer.enable();
    }
}
