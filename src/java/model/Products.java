/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Linh
 */
public class Products {

    public Products() {
    }

    public void delete(String masp) {
        try {
            String sql = " delete from Products where Code = ? ";
            JdbcConnect.executeUpdate(sql, masp);
        } catch (Exception e) {
        }
    }

    public void insert(String masp, String tensp, float gia, String category, String img) {
        try {
            String sql = "insert into Products values (?,?,?,?,?);";
            JdbcConnect.executeUpdate(sql, masp,tensp,gia,category,img);
        } catch (Exception e) {
        }
    }

    public void update(String masp, String tensp, float gia, String category, String img) {
        try {
            String sql ="update Products set Name = ?,Price = ?,Category = ?,Img = ? where Code = ?";
            JdbcConnect.executeUpdate(sql, tensp,gia,category,img,masp);
        } catch (Exception e) {
        }
    }

    public List<Product> showProduct(String tensp) {
        try {
            String sql = "select * from products";
            if (tensp.length() > 0) {
                sql += " where Name like '%" + tensp + "%'";
            }
            ResultSet rs = JdbcConnect.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                String category = rs.getString("Category");
                String img = rs.getString("Img");
                Product sp = new Product(code, name, price, category, img);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Product> showProductbycategory(String Category) {
        try {
            String sql = "select * from products";
            if (Category.length() > 0) {
                sql += " where Category like '%" + Category + "%'";
            }
            ResultSet rs = JdbcConnect.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                String category = rs.getString("Category");
                String img = rs.getString("Img");
                Product sp = new Product(code, name, price, category, img);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
