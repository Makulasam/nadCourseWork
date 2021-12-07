/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.administration;

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
 * @author user
 */
public class GetBookingHandler extends SimpleTagSupport {
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
                           int bookings = 0;
                  ResultSet booking  = St.executeQuery("select * from bookings ");

    while(booking.next()){

      bookings++;

}
 out.println(bookings);
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
            throw new JspException("Error in GetBookingHandler tag", ex);
        } catch (SQLException ex) {
          Logger.getLogger(GetBookingHandler.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
    
}
