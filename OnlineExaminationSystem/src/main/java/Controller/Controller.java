package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String s1 = request.getParameter("param");
        
        //redirectStudentZone
         if (s1.equals("StudentZone")) {
            RequestDispatcher rd = request.getRequestDispatcher("StudentZone.jsp");
            rd.include(request, response);
        }
         
         //redirectFacultyZone
         if (s1.equals("FacultyZone")) {
            RequestDispatcher rd = request.getRequestDispatcher("FacultyZone.jsp");
            rd.include(request, response);
        }

        //Sending response to Register Page
        if (s1.equals("Register")) {
            RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
            rd.include(request, response);
        }

        //Sending response to Login Page
        if (s1.equals("Login")) {
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.include(request, response);
        }

        //Sending response to Home Page
        if (s1.equals("Home")) {
            RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
            rd.include(request, response);
        }

        //Sending response to Faculty Home
        if (s1.equals("FacultyHome")) {
            RequestDispatcher rd = request.getRequestDispatcher("Teachers.jsp");
            rd.include(request, response);
        }

        //Sending response to Student Home
        if (s1.equals("Student")) {
            RequestDispatcher rd = request.getRequestDispatcher("Student.jsp");
            rd.include(request, response);
        }

        if (s1.equals("menu")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("StudentMenu.jsp").forward(request, response);
        }

        if (s1.equals("menu1")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("FacultyMenu.jsp").forward(request, response);
        }

        //FacultyMenuManageExam
        if (s1.equals("ManageExam")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("ManageExam.jsp").forward(request, response);
        }

        //rediectFacultyProfile
        if (s1.equals("FacultyProfile")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("FacultyProfileDetails.jsp").forward(request, response);
        }

        //redirectStudentProfile
        if (s1.equals("StudentProfile")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("StudentProfileDetails.jsp").forward(request, response);
        }

        //allStudentsRedirect
        if (s1.equals("AllStudents")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("AllStudents.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String s1 = request.getParameter("param");

        // Registering User and Sending response to Login page
        if (s1.equals("Registerd")) {
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String course = request.getParameter("cmbCourse");
            String userType = request.getParameter("cmbUserType");
            String mobile = request.getParameter("txtPhoneNo");
            String email = request.getParameter("txtEmailId");
            String password = request.getParameter("txtPassword");

            Model.Model1 m1 = new Model.Model1();

            m1.insertFields(firstName, lastName, email, userType, course, mobile, password);
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.include(request, response);
        }

        // Verifying user and Sending response to Menu page
        if (s1.equals("Menu")) {
            String userType = request.getParameter("cmbUserType");
            String userName = request.getParameter("txtUserName");
            String password = request.getParameter("txtPassword");
            String[] data = new String[2];
            data[0] = userName;
            
            System.out.println(userType+" "+userName+" "+password);

            if (userType.equals("")) {
                response.sendRedirect("Login.jsp?error=Invalid User");
            } else {
                Model.Model1 m1 = new Model.Model1();

                if (userType.equals("Student")) {
                    if (m1.verifyStudent(userName, password)) {
                        data[1] = m1.getInfo(userName, "student");
                        request.setAttribute("data", data);
                        request.getRequestDispatcher("StudentMenu.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("Login.jsp?error=Invalid Details");
                    }
                }

                if (userType.equals("Faculty")) {
                    if (m1.verifyFaculty(userName, password)) {
                        data[1] = m1.getInfo(userName, "faculty");
                        request.setAttribute("data", data);
                        request.getRequestDispatcher("FacultyMenu.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("Login.jsp?error=Invalid Details");
                    }
                }
            }
        }

        //insertingQuestionsToDatabase
        if (s1.equals("insert")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            String questionId = request.getParameter("questionId");
            String question = request.getParameter("question");
            String option1 = request.getParameter("option1");
            String option2 = request.getParameter("option2");
            String option3 = request.getParameter("option3");
            String option4 = request.getParameter("option4");
            String answer = request.getParameter("answer");

            if ((questionId.equals("")) && (question.equals("")) && (option1.equals("")) && (option2.equals("")) && (option3.equals("")) && (option4.equals("")) && (answer.equals(""))) {
                request.getRequestDispatcher("ManageExam.jsp?error=Invalid Details").forward(request, response);
            } else {
                Model.Model1 m1 = new Model.Model1();
                m1.insertQuestions(questionId, question, option1, option2, option3, option4, answer);
                request.getRequestDispatcher("Inserted.jsp?done=Data Inserted").forward(request, response);
            }
        }

//         //  searchQuestion
//          if (s1.equals("search")) {
//            String questionId = request.getParameter("questionId");
//            Model.Model1 m1 = new Model.Model1();
//            String data[] = m1.searchQuestion(questionId);
//            if (data[0].equals("nodatafound")) {
//                request.setAttribute("data",data);
//                request.getRequestDispatcher("ManageExam.jsp?data=nodatafound").forward(request, response);
//            } else {
//                request.setAttribute("data",data);
//                request.getRequestDispatcher("Search1.jsp").forward(request, response);
//            }
//        }
        //deleteQuestions
        if (s1.equals("delete")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            String questionId = request.getParameter("questionId1");
            Model.Model1 m1 = new Model.Model1();
            m1.deleteQuestion(questionId);
            request.getRequestDispatcher("Delete1.jsp?done=Data Deleted").forward(request, response);
        }

        //updateQuestion
        if (s1.equals("update")) {

            String questionId = request.getParameter("questionId1");
            String question = request.getParameter("question");
            String option1 = request.getParameter("option1");
            String option2 = request.getParameter("option2");
            String option3 = request.getParameter("option3");
            String option4 = request.getParameter("option4");
            String answer = request.getParameter("answer");

            Model.Model1 m1 = new Model.Model1();
            m1.updateQuestion(questionId, question, option1, option2, option3, option4, answer);
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("Update.jsp?done=Data Updated").forward(request, response);
        }

        //updateFacultyProfile
        if (s1.equals("FacultyProfileUpdate")) {
            String[] data = new String[2];
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String phoneNo = request.getParameter("txtPhoneNo");
            String userType = request.getParameter("txtUserType");
            data[0] = request.getParameter("email");
            data[1] = firstName;
            request.setAttribute("data", data);
            Model.Model1 m1 = new Model.Model1();
            m1.updateFacultyProfile(data[0], firstName, lastName, phoneNo, userType);
            request.getRequestDispatcher("FacultyProfileDetails.jsp?done=Data Updated").forward(request, response);
        }

        //updateStudentProfile
        if (s1.equals("StudentProfileUpdate")) {
            String[] data = new String[2];
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String phoneNo = request.getParameter("txtPhoneNo");
            String userType = request.getParameter("txtUserType");
            data[0] = request.getParameter("email");
            data[1] = firstName;
            request.setAttribute("data", data);
            Model.Model1 m1 = new Model.Model1();
            m1.updateStudentProfile(data[0], firstName, lastName, phoneNo, userType);
            request.getRequestDispatcher("StudentProfileDetails.jsp?done=Data Updated").forward(request, response);
        }

        if (s1.equals("Search1")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("Search1.jsp").forward(request, response);
        }
        if (s1.equals("Delete")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("Delete.jsp").forward(request, response);
        }
        if (s1.equals("ShowAll")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("ShowAll.jsp").forward(request, response);
        }

        //redirectInstructionsPage
        if (s1.equals("Instructions")) {
            String[] data = new String[3];
            data[2] = request.getParameter("cmbSubject");
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            request.getRequestDispatcher("Instructions.jsp").forward(request, response);
        }

       
    }

    @Override
    public String getServletInfo() {
        return "Controller Servlet";
    }

}
