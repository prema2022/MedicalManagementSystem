package net.newuser.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import net.newuser.model.Appointment;

public class AppointmentDao {
    public static int bookingregister(Appointment appointment) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO booking(pname, phone, adate, symptom, message, dr_name) VALUES(?, ?, ?, ?, ?, ?)";
        int result = 0;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuser?useSSL=false", "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setString(1, appointment.getName());
            preparedStatement.setString(2, appointment.getPhone());
            preparedStatement.setString(3, appointment.getDate()); // Date in string format (dd-MM-yyyy)
            preparedStatement.setString(4, appointment.getSymptom());
            preparedStatement.setString(5, appointment.getMessage());
            preparedStatement.setString(6, appointment.getDrname()); // Doctor name

            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
}
