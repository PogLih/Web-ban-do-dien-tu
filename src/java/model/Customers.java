/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Linh
 */
public class Customers {

    public Customers() {
    }

    public void delete(String username) {
        try {
            String sql = " delete from Customers where username = ? ";
            JdbcConnect.executeUpdate(sql, username);
        } catch (Exception e) {
        }
    }

    public void insert(String username, String password, String lastname, String email, String phonenumber, String address) {
        try {
            String sql = "insert into Customers(username,password,lastname,email,phonenumber,address,isAdmin) values (?,?,?,?,?,?,0)";
            JdbcConnect.executeUpdate(sql, username, password, lastname, email, phonenumber, address);
        } catch (Exception e) {
        }
    }

    public void update(String username, String password, String lastname, String email, String phonenumber, String address) {
        try {
            String sql = "update Customers set password= ? , lastname= ? , email= ? , phonenumber= ? , address= ? where username= ?";
            JdbcConnect.executeUpdate(sql, password, lastname, email, phonenumber, address, username);
        } catch (Exception e) {
        }
    }

    public List<Customer> showCustomer(String username) {
        try {
            String sql = "select * from customers";
            if (username.length() > 0) {
                sql += " where username = '" + username + "'";
            }
            ResultSet rs = JdbcConnect.executeQuery(sql);
            List<Customer> list = new ArrayList<Customer>();
            while (rs.next()) {
                String name = rs.getString("username");
                String pass = rs.getString("password");
                String lastname = rs.getString("lastname");
                String email = rs.getString("email");
                String phonenumber = rs.getString("phonenumber");
                String address = rs.getString("address");
                boolean isadmin = rs.getBoolean("isAdmin");
                Customer ctm = new Customer(name, pass, lastname, email, phonenumber, address, isadmin);
                list.add(ctm);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
