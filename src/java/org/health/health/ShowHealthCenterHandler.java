/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.health;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import org.db.connection.DBConnection;

/**
 *
 * @author BIGLINKS
 */
public class ShowHealthCenterHandler extends SimpleTagSupport {
    DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();


    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
             Statement St = newConn.createStatement();
                           
                  ResultSet vaccineType  = St.executeQuery("select * from healthcentres");
    while(vaccineType.next()){

    out.println("  <tr>\n" +
"      <th scope=\"row\">"+vaccineType.getString("healthCenterId")+"</th>\n" +
        "      <th scope=\"row\">"+vaccineType.getString("healthCenterName")+"</th>\n" +
"      <td>"+vaccineType.getString("totalPatients")+"</td>\n" +

"      <td> "
            +"<td>"
        + "<button onClick='window.location=\"UpdateHealthCenter.jsp?details="+vaccineType.getString("healthCenterName")+ ',' +vaccineType.getString("totalPatients")+"\"'>update</button></td>\n" +
"    </tr>");

}
    
    Conn.closeConnection();


            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ShowHealthCenterHandler tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(ShowHealthCenterHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
