/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exoticatravels;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 *
 * @author lenovo
 */
@WebFilter(filterName = "IPFilter", urlPatterns = {"/GetLogDetails"}, initParams = {
    @WebInitParam(name = "validip", value = "0:0:0:0:0:0:0:1")})
public class IPFilter implements Filter 
{
    private String validip;
    
    @Override
    public void init(final FilterConfig filterConfig) throws ServletException
    {        
        this.validip = filterConfig.getInitParameter("validip");
    }
   
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException 
    {
        if(request.getRemoteAddr().equals(this.validip))
        {
            
        }
        else
        {
                  }
        chain.doFilter(request,response);
    }

   @Override
    public void destroy() {  
        throw new UnsupportedOperationException("Not supported yet.");
    }         

    

    
}
