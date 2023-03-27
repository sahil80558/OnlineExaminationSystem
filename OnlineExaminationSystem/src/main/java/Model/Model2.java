package Model;
import static Controller.Controller2.path;
import java.sql.*;
import DatabaseConnection.ConnectionProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import javax.servlet.http.Part;

public class Model2 {
    public static String path;
    public boolean scheduleExam(String subject,String date,String time,String hour,String min){
        try{
            Connection con=DatabaseConnection.ConnectionProvider.getCon();
            Statement st=con.createStatement();
            String q="insert into scheduleExam values('"+date+"','"+time+"','"+subject+"','"+hour+"','"+min+"')";
            st.executeUpdate(q);
            con.close();
            return true;
        }catch(Exception e){
            System.out.println(e);
        }
        return false;
    }
    
    public boolean verifyStudent(String email){
        String verify="true";
        try{
            Connection con=DatabaseConnection.ConnectionProvider.getCon();
            Statement st=con.createStatement();
            String q="update student set verify='"+verify+"' where email='"+email+"'" ;
            st.executeUpdate(q);
            con.close();
            return true;
        }catch(Exception e){
            System.out.println(e);
        }
        return false;
    }
    
    public boolean CSVUpload(Part filePart){
        String fileName = filePart.getSubmittedFileName();

//            response.getWriter().println("Name=" + fileName);
            path = "C:\\Users\\DELL\\OneDrive\\Documents\\NetBeansProjects\\OnlineExaminationSystem\\web\\files" + File.separator + fileName;
//            response.getWriter().println("Path=" + path);
            try{
            InputStream ip = filePart.getInputStream();
            boolean succes = uploadFile(ip);
            }catch(Exception e){
                System.out.println(e);
            }
        return true;    
    }
    //upload FileMethod
    public boolean uploadFile(InputStream ip) {
        boolean test = false;
        try {
            byte[] byt = new byte[ip.available()];
            ip.read();
            try (FileOutputStream fops = new FileOutputStream(path)) {
                ip.read(byt);
                fops.write(byt);
//            fops.flush();
            }
            
            test = true;
        } catch (Exception e) {
            System.out.println(e);
        }
        return test;
    }
}
