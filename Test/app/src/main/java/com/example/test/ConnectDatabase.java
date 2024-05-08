package com.example.test;
import java.sql.*;

public class ConnectDatabase {
    Statement s;
    Connection c;

    public ConnectDatabase(){
        try {
            c = DriverManager.getConnection("jdbc:mysql:///bankmanagementsystem", "root", "kali@12345");
            s = c.createStatement();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }


}
