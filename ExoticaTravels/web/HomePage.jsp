<%-- 
    Document   : HomePage
    Created on : 17 Mar, 2020, 3:12:17 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
    <head>
        <title>Home Page</title>
    </head>
    <body>
    <jsp:include page="Template.jsp"></jsp:include>
    <script type="text/javascript"><!--refreshdiv(); // -->
        <script type="text/javascript">
        var second=5;
        var img="imgchng";
        var url="ImageChange";
        function refreshdiv()
        {
        var xmlHttp;
        try
        {
            xmlHttp=new XMLHttpRequest();
        }
        catch (e)
        {
        try{
            xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e)
        {
        try{ 
            xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch (e)
        {
        alert("Your browser does not support AJAX.");
        return false;
        }}}
        fetch_unix_timestamp=function()
        {
        return parseInt(new Date().getTime().toString().substring(0, 10))
        }
        var timestamp= fetch_unix_timestamp();
        var nocacheurl= url+"?t="+timestamp;
        xmlHttp.onreadystatechange=function()
        {
        if(xmlHttp.readyState==4)
        {
            document.getElementById(img).src=xmlHttp.responseText;
            setTimeout('refreshdiv()', seconds*1000);
            }        }
            xmlHttp.open("GET", nocacheuri, true);
            xmlHttp.send(null);
            }
            var seconds;
            window.onload= function startrefresh()
            {
            setTimeout('refreshdiv()',seconds*1000);
            }
            </script>
            
    <td valign="top"> <br/><br/><B><I>
   <font style='font-family : Brush Script MT Italics, Gadget, sans-serif;' size='1' color='darkblue'>
    Exotica Travels is a travel management company established by Jordan Desilva in Colombo, Sri Lanka. Today under the chairmanship of Jim Henry, the company has spread across the country. It provides online air tickets booking. In addition, it provides hotel suite booking in various exotic locations all over the world. Moreover, it provides rental car bookings. To avail the travel package services kindly log on to the Website.
    <B><I>
            </br>
            </br>
            <html:form method="post" action="/SubmitAction">
                <table cellspacing='10' align='center'>
                    <tr>
                        <td>
                            <font color='darkblue' size='2'>Login As:
                        </td>
                    </tr>
                </table>
                <table cellspacing='10' align='center' border='2' bordercolor='black'>
                    <tr><td  bordercolor='white'><html:radio property='r1' value="existinguser">Existing User</html:radio>
                            <tr><td bordercolor='white'><html:radio property='r1' value="newuser">New User</html:radio>
                                    <tr><td bordercolor='white'><input type="submit" value="Submit"/>
                </table>
            </html:form>
        </tr>
    </table>
      </body>

