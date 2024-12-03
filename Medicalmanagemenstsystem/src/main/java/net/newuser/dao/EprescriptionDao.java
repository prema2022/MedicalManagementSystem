 
package net.newuser.dao;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import net.newuser.model.Eprescription;

	public class EprescriptionDao {
	    private String jdbcURL = "jdbc:mysql://localhost:3306/newuser?useSSL=false";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "root";
	    private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	    
	    private static final String SELECT_PRESCRIPTION_BY_PID = "SELECT pname, pid, date, doctorname, age, medicineDetails FROM prescription WHERE pid = ?";

	    // Load the JDBC Driver
	    public EprescriptionDao() {
	        try {
	            Class.forName(jdbcDriver);
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	    }

	    // Fetch Prescription by pid
	    public Eprescription selectEprescription(String pid) {
	    	Eprescription eprescription = null;
	        
	        // Step 1: Establish the connection
	        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRESCRIPTION_BY_PID)) {
	            
	            preparedStatement.setString(1, pid);
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 2: Process the ResultSet
	            if (rs.next()) {
	                String pname = rs.getString("pname");
	                String date = rs.getString("date");
	                String doctorname = rs.getString("doctorname");
	                int age = rs.getInt("age");
	                String medicineDetails = rs.getString("medicineDetails");

	                eprescription = new Eprescription();
	                eprescription.setPname(pname);
	                eprescription.setPid(pid);
	                eprescription.setDate(date);
	                eprescription.setDoctorname(doctorname);
	                eprescription.setAge(age);
	                eprescription.setMedicineDetails(medicineDetails);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return eprescription;
	    }
	}


