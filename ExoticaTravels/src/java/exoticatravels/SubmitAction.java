/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exoticatravels;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author HP
 */
public class SubmitAction extends org.apache.struts.action.Action {
       private static final String NewUser="newuser";
       private static final String ExistingUser="existinguser";
    /* forward name="success" path="" */
        @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception 
    {   HomePageBean hb=(HomePageBean)form;
        String str1=hb.getR1();
        if(str1.equals("newuser"))
        {
            return mapping.findForward(NewUser);
        }
          else
             return mapping.findForward(ExistingUser);
        
            }
}
