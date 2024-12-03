package net.newuser.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.newuser.model.Prescription;

	public class PrescriptionDao {

	    // Method to save the prescription details in the database
	    public int savePrescription(Prescription prescription) throws ClassNotFoundException {
	        String INSERT_PRESCRIPTION_SQL = "INSERT INTO prescription (pid, pname, date, doctorname, age, medicineDetails) VALUES (?, ?, ?, ?, ?, ?)";
	        int result = 0;

	        Class.forName("com.mysql.cj.jdbc.Driver");

	        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuser?useSSL=false", "root", "root");
	             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRESCRIPTION_SQL)) {
	            

	        	preparedStatement.setString(1, prescription.getPid());
	        	preparedStatement.setString(2, prescription.getPname());
	        	preparedStatement.setString(3, prescription.getDate());
	        	preparedStatement.setString(4, prescription.getDoctorname());
	        	preparedStatement.setInt(5, prescription.getAge());
	        	preparedStatement.setString(6, prescription.getMedicineDetails());
	            
	            // Execute the query and return the result
	            result = preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return result;
	    }
	}

