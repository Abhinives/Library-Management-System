/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lenovo
 */
import java.net.Authenticator;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




public class sendMail {
 private static int rand;
   public static int sendMail(String recipient) throws Exception { 
        Properties properties=new Properties();
        properties.put("mail.smtp.auth","true");
        properties.put("mail.smtp.starttls.enable","true");
        properties.put("mail.smtp.host","smtp.gmail.com");
        properties.put("mail.smtp.port","587");
        
        
        String myaccountemail="libcitmanagement@gmail.com";
        String password="librarymanagement";
        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(myaccountemail, password);
                    }
                });
        Message message=prepareMessage(session, myaccountemail, recipient);
        Transport.send(message);
        System.out.println("Message sent successfully");
        return rand;
        
   
}

    private static Message prepareMessage(Session session, String myaccountemail, String recipient) {
        
  
       try {
           Message message=new MimeMessage(session);
           message.setFrom(new InternetAddress(myaccountemail));
           message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
           rand = new Random().nextInt(900000) + 100000;
           message.setSubject("OTP Verification");
           message.setText(Integer.toString(rand));
           return message;
           
           
           
       } catch (Exception ex) {
           Logger.getLogger(sendMail.class.getName()).log(Level.SEVERE, null, ex);
       }
       return null;
    }
}
