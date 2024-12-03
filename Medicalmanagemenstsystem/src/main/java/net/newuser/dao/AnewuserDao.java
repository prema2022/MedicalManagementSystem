package net.newuser.dao;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

import net.newuser.model.Anewuser;


	public class AnewuserDao {
	    private String jdbcURL = "jdbc:mysql://localhost:3306/newuser?useSSL=false";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "root";
	    private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	    
	    private static final String SELECT_PRESCRIPTION_BY_PID = "SELECT name, age, gender, blood, contact, address, aname, acontact FROM newuser WHERE name = ?";

	    // Load the JDBC Driver
	    public AnewuserDao() {
	        try {
	            Class.forName(jdbcDriver);
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	    }

	    // Fetch Prescription by pid
	    public Anewuser selectAnewuser(String name) {
	    	Anewuser anewuser = null;
	        
	        // Step 1: Establish the connection
	        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRESCRIPTION_BY_PID)) {
	            
	            preparedStatement.setString(1, name);
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 2: Process the ResultSet
	            if (rs.next()) {
	                String age = rs.getString("age");
	                String gender = rs.getString("gender");
	                String blood = rs.getString("blood");
	                String contact = rs.getString("contact");
	                String address = rs.getString("address");
	                String aname = rs.getString("aname");
	                String acontact = rs.getString("acontact");

	                anewuser = new Anewuser();
	                anewuser.setName(name);
	                anewuser.setAge(age);
	                anewuser.setGender(gender);
	                anewuser.setBlood(blood);
	                anewuser.setContact(contact);
	                anewuser.setAddress(address);
	                anewuser.setAname(aname);
	                anewuser.setAcontact(acontact);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return anewuser;
	    }
	}


