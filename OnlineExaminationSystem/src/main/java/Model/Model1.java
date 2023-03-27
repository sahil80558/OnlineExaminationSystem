package Model;

import java.sql.*;
import DatabaseConnection.ConnectionProvider;
import java.io.PrintWriter;

public class Model1 {

    // Registering User
    public void insertFields(String firstName, String lastName, String email, String userType, String course, String mobile, String password) {
        String verify="false";

        if (userType.equals("Student")) {
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "insert into student values ('" + firstName + "','" + lastName + "','" + email + "','" + course + "','" + userType + "','" + mobile + "','" + password + "','" +verify+ "') ";
                st.executeUpdate(q);
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        if (userType.equals("Faculty")) {
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "insert into faculty values ('" + firstName + "','" + lastName + "','" + email + "','" + course + "','" + userType + "','" + mobile + "','" + password + "') ";
                st.executeUpdate(q);
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

    //Verifying Student
    public boolean verifyStudent(String userName, String Password) {
        String verify="true";

        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "select * from student where email='" + userName + "' AND password='" + Password + "' AND verify='"+verify+"'";
            String q1 = "select * from student where email='" + userName + "' AND password='" + Password + "' AND verify='"+verify+"'";
            ResultSet rs = st.executeQuery(q);
            if (rs.next()) {
                return true;
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    // Verifying Faculty
    public boolean verifyFaculty(String userName, String Password) {

        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "select * from faculty where email='" + userName + "' AND password='" + Password + "'";
            ResultSet rs = st.executeQuery(q);
            if (rs.next()) {
                return true;
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    // getInformation to display on Menu page
    public String getInfo(String userName, String userType) {
        String data[] = new String[6];
        if (userType.equals("student")) {
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "select firstName from student where email='" + userName + "'";
                ResultSet rs = st.executeQuery(q);
                if (rs.next()) {
                    return rs.getString(1);
                }
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        } else if (userType.equals("faculty")) {
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "select firstName from faculty where email='" + userName + "'";
                ResultSet rs = st.executeQuery(q);
                if (rs.next()) {
                    return rs.getString(1);
                }
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return "";
    }

    //insertQuestionsToDatabase
    public void insertQuestions(String questionId, String question, String option1, String option2, String option3, String option4, String answer) {
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "insert into questions values('" + questionId + "','" + question + "','" + option1 + "','" + option2 + "','" + option3 + "','" + option4 + "','" + answer + "')";
            st.executeUpdate(q);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //searchQuestions
    public String[] searchQuestion(String questionId) {
        String data[] = new String[7];
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "select * from questions where questionId='" + questionId + "' ";
            ResultSet rs = st.executeQuery(q);
            int i = 1;
            if (rs.next()) {
                while (rs.next()) {
                    data[0] = rs.getString(1);
                    data[1] = rs.getString(2);
                    data[2] = rs.getString(3);
                    data[3] = rs.getString(4);
                    data[4] = rs.getString(5);
                    data[5] = rs.getString(6);
                    data[6] = rs.getString(7);
                }
            } else {
                data[0] = "nodatafound";
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return data;
    }

    //updateQuestion
    public void updateQuestion(String questionId, String question, String option1, String option2, String option3, String option4, String answer) {
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "update questions set question='" + question + "',option1='" + option1 + "',option2='" + option2 + "',option3='" + option3 + "',option4='" + option4 + "',answer='" + answer + "' where questionId='" + questionId + "' ";
            st.executeUpdate(q);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //deleteQuestion
    public void deleteQuestion(String questionId) {
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "delete from questions where questionId='" + questionId + "'";
            st.executeUpdate(q);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //updateFacultyProfile
    public void updateFacultyProfile(String email, String firstName, String lastName, String phoneNo, String userType) {
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "update faculty set email='" + email + "',firstName='" + firstName + "',lastName='" + lastName + "',mobile='" + phoneNo + "',userType='" + userType + "' where email='" + email + "' ";
            st.executeUpdate(q);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //updateFacultyProfile
    public void updateStudentProfile(String email, String firstName, String lastName, String phoneNo, String userType) {
        try {
            Connection con = DatabaseConnection.ConnectionProvider.getCon();
            Statement st = con.createStatement();
            String q = "update student set email='" + email + "',firstName='" + firstName + "',lastName='" + lastName + "',mobile='" + phoneNo + "',userType='" + userType + "' where email='" + email + "' ";
            st.executeUpdate(q);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //getQuestions
    static int quesId = 1;

    public String[] getQuestions(int totalQues) {
        String ques[] = new String[7];
        if (quesId == totalQues+1) quesId = 1;
        if (quesId <= totalQues) {
            try {
                Connection con = DatabaseConnection.ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "select * from questions where questionId='" + quesId + "'";
                ResultSet rs = st.executeQuery(q);
                if (rs.next()) {
                    ques[0] = rs.getString(1);
                    ques[1] = rs.getString(2);
                    ques[2] = rs.getString(3);
                    ques[3] = rs.getString(4);
                    ques[4] = rs.getString(5);
                    ques[5] = rs.getString(6);
                    ques[6] = rs.getString(7);
                }
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
            quesId++;
        }
        return ques;
    }
    
    public boolean cheakAnswer(String answer,String questionId){
        try {
                Connection con = DatabaseConnection.ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "select answer from questions where questionId='" + questionId + "'";
                ResultSet rs = st.executeQuery(q);
                if (rs.next()) {
                    if(rs.getString(1).equals(answer))return true;
                }
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        return false;
    }
    
    public void setResult(String firstName,String email,String Subject,String totalQues,String attemptedQues, String marksObtained,String correctQues,String totalMarks,String percentage){
        try {
            String lastName="";
                Connection con = DatabaseConnection.ConnectionProvider.getCon();
                Statement st = con.createStatement();
                String q = "insert into result values('"+firstName+"','"+lastName+"','"+email+"','"+Subject+"','"+totalQues+"','"+attemptedQues+"','"+correctQues+"','"+marksObtained+"','"+totalMarks+"','"+percentage+"') ";
                st.executeUpdate(q);
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
    }
}
