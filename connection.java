package healthcare.management.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class conn {

    Connection connection;
    Statement statement;

    public conn() {
        try {
            connection = DriverManager.getConnection("Jdbc:mysql://localhost:3306/healthcare_management_system", "root", "gop@8305");
            statement = connection.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
