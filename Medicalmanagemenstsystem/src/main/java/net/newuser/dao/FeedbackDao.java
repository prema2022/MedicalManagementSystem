package net.newuser.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import net.newuser.model.Feedback;

public class FeedbackDao {
	public static int feedbackregister(Feedback feedback) throws ClassNotFoundException {
	      String INSERT_USERS_SQL = "INSERT INTO feedback(patient_name, treatment_taken, feedback) VALUES(?, ?, ?)";
	      int result = 0;
	      Class.forName("com.mysql.cj.jdbc.Driver");

	         try (
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuser?useSSL=false", "root", "root");

	               PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
	        		 )
	         {
	                 
	                  preparedStatement.setString(1, feedback.getPatient_name());
	                  preparedStatement.setString(2, feedback.getTreatment_taken());
	                  preparedStatement.setString(3, feedback.getFeedback());
	                  System.out.println(preparedStatement);
	                  result = preparedStatement.executeUpdate();
	                
	      } catch (SQLException e) 
	      {
	         e.printStackTrace();
	      }

	      return result;
	   
	 		}
}
