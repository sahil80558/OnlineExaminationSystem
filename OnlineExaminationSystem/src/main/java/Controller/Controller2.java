package Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class Controller2 extends HttpServlet {

    public static String questionId;
    public static int marks;
    public static int totalQues;
    public static String answer;
    public static String path;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String s1 = request.getParameter("param");
        if (s1.equals("StudentResult")) {
            String[] data = new String[3];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            RequestDispatcher rd = request.getRequestDispatcher("StudentResult.jsp");
            rd.include(request, response);
        }

        //redirectFacultyResults
        if (s1.equals("FacultyResult")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            RequestDispatcher rd = request.getRequestDispatcher("FacultyResult.jsp");
            rd.include(request, response);
        }

        if (s1.equals("VerifyStudent")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            RequestDispatcher rd = request.getRequestDispatcher("VerifyStudent.jsp");
            rd.include(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, FileNotFoundException {

        String s1 = request.getParameter("param");
        PrintWriter out = response.getWriter();

        //redirectTestPage
        if (s1.equals("Test")) {
            String[] data = new String[10];
            data[2] = request.getParameter("cmbSubject");
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            Model.Model1 m1 = new Model.Model1();
            int totalQues = 10;
            String ques[] = m1.getQuestions(totalQues);
            int j = 3;
            for (int i = 0; i < ques.length; i++) {
                data[j] = ques[i];
                j++;
            }
            request.setAttribute("data", data);
            request.getRequestDispatcher("Test.jsp").forward(request, response);
        }

        questionId = request.getParameter("questionId");
        answer = request.getParameter("answer");

        //testStart
        if (s1.equals("TestStart")) {
            totalQues = 10;
            String[] data = new String[10];
            data[2] = request.getParameter("cmbSubject");
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");

            Model.Model1 m1 = new Model.Model1();
            if (m1.cheakAnswer(answer, questionId)) {
                marks++;
            }
            System.out.println("QuestionId-" + questionId);
            System.out.println("QuestionId-" + answer);
            System.out.println("Marks-" + marks);
            String ques[] = m1.getQuestions(totalQues);
            int j = 3;
            for (int i = 0; i < ques.length; i++) {
                data[j] = ques[i];
                j++;
            }
            request.setAttribute("data", data);
            request.getRequestDispatcher("Test.jsp").forward(request, response);
        }

        //result
        if (s1.equals("ExamSubmitted")) {
            Model.Model1 m1 = new Model.Model1();
            if (m1.cheakAnswer(answer, questionId)) {
                marks++;
            }
            System.out.println(marks);
            String[] data = new String[10];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");

            String firstName = request.getParameter("user");
            String email = request.getParameter("email");
            String subject = request.getParameter("cmbSubject");
            String totalQues = "10";
            String attemptedQues = request.getParameter("questionId");
            String correctQues = String.valueOf(marks);
            String marksObtained = String.valueOf(marks);
            String totalMarks = "10";
            double percent = ((double) marks / 10) * 100;
            System.out.println(percent);
            String percentage = String.valueOf(percent);

            m1.setResult(firstName, email, subject, totalQues, attemptedQues, marksObtained, correctQues, totalMarks, percentage);
            request.setAttribute("data", data);
            request.getRequestDispatcher("StudentResult.jsp").forward(request, response);
        }

        //upload CSVFile
        if (s1.equals("CSVFile")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            Part filePart = request.getPart("file");
            Model.Model2 m1=new Model.Model2();
             if (m1.CSVUpload(filePart)) {
                request.getRequestDispatcher("MainExam.jsp?done=File_Inserted").forward(request, response);
                out.println("File Uploaded" + path);
            } else {
                 request.getRequestDispatcher("MainExam.jsp?done=File_Inserted").forward(request, response);
                out.println("error");
            }
            
        }

        //redirectStudentResult
        if (s1.equals("StudentResult")) {
            String[] data = new String[3];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            RequestDispatcher rd = request.getRequestDispatcher("StudentResult.jsp");
            rd.include(request, response);
        }

        //redirectFacultyResults
        if (s1.equals("FacultyResults")) {
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            RequestDispatcher rd = request.getRequestDispatcher("FacultyResults.jsp");
            rd.include(request, response);
        }

        //redirectScheduleExamFaculty
        if (s1.equals("ScheduleExam")) {

            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);

            Model.Model2 m2 = new Model.Model2();
            if (m2.scheduleExam(request.getParameter("cmbSubject"), request.getParameter("date"), request.getParameter("time"), request.getParameter("hour"), request.getParameter("min"))) {
                RequestDispatcher rd = request.getRequestDispatcher("FacultyMenu.jsp?done=Exam Scheduled");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("FacultyMenu.jsp?done=error");
                rd.include(request, response);
            }
        }
        //verifyStudent
        if (s1.equals("StudentVerified")) {
            String s2=request.getParameter("studentemail");
            System.out.println(request.getParameter("studentemail"));
            System.out.println(request.getParameter(s2));
            String[] data = new String[2];
            data[0] = request.getParameter("email");
            data[1] = request.getParameter("user");
            request.setAttribute("data", data);
            Model.Model2 m2 = new Model.Model2();
            if (m2.verifyStudent(request.getParameter("s2"))) {
                RequestDispatcher rd = request.getRequestDispatcher("VerifyStudent.jsp?done=Student Verified.jsp");
                rd.include(request, response);
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("VerifyStudent.jsp?done=error");
                rd.include(request, response);
            }
        }

        if (s1.equals("StudentScheduledExam")) {
            Model.Model2 m2 = new Model.Model2();

        }
    }

    

}
