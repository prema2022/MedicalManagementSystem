	package net.newuser.dao;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import net.newuser.model.Newuser;
	
	public class NewuserDao {
		 public static int registeruser(Newuser newuser) throws ClassNotFoundException {
		      String INSERT_USERS_SQL = "INSERT INTO newuser  ( name, age, gender, blood, contact, address, aname, acontact) VALUES  (?, ?, ?, ?,?,?,?,?);";
		      int result = 0;
		      Class.forName("com.mysql.jdbc.Driver");
	 
		         try (
		            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuser?useSSL=false", "root", "root");
	
		               PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
		        		 )
		         {
		      
		                  preparedStatement.setString(1, newuser.getName());
		                  preparedStatement.setString(2, newuser.getAge());
		                  preparedStatement.setString(3, newuser.getGender());
		                  preparedStatement.setString(4, newuser.getBlood());
		                  preparedStatement.setString(5, newuser.getContact());
		                  preparedStatement.setString(6, newuser.getAddress());
		                  preparedStatement.setString(7, newuser.getAname());
		                  preparedStatement.setString(8, newuser.getAcontact());
		                  System.out.println(preparedStatement);
		                  result = preparedStatement.executeUpdate();
		                
		      } catch (SQLException e) 
		      {
		         e.printStackTrace();
		      }
	
		      return result;
		   
		 		}
		   }
	
