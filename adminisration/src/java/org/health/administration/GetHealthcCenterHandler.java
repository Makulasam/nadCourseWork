/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.administration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import org.db.connection.DBConnection;

/**
 *
 * @author user
 */
public class GetHealthcCenterHandler extends SimpleTagSupport {
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
             String query = "SELECT * FROM `healthcentres`";

             PreparedStatement preparedStatement = newConn.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

           

            while (resultSet.next()) {
                out.println("<option ");
                out.println("value = \"" + resultSet.getString("healthCenterName") + "\">");
                out.println( resultSet.getString("healthCenterName"));
                out.println("</option>");

            }


            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in GetHealthcCenterHandler tag", ex);
        } catch (SQLException ex) {
             Logger.getLogger(GetHealthcCenterHandler.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    
}
