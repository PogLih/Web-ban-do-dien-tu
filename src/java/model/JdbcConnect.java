/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Linh
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcConnect {

    private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String dburl = "jdbc:sqlserver://localhost;database=AssignmentSOF301";
    private static String username = "sa";
    private static String password = "123";

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static PreparedStatement prepareStatement(String sql, Object... args) throws SQLException {
        Connection connection = DriverManager.getConnection(dburl, username, password);
        PreparedStatement pstmt = null;
        if (sql.trim().startsWith("{")) {
            pstmt = connection.prepareCall(sql);
        } else {
            pstmt = connection.prepareStatement(sql);
        }
        for (int i = 0; i < args.length; i++) {
            pstmt.setObject(i + 1, args[i]);
        }
        return pstmt;
    }//sample:String sql = "{call sp_ThongKeNguoiHoc}";
    //ResultSet rs = JdbcHelper.executeQuery(sql);

    public static void executeUpdate(String sql, Object... args) {
        try {
            PreparedStatement stmt = prepareStatement(sql, args);
            try {
                stmt.executeUpdate();
            } finally {
                stmt.getConnection().close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }//sample:String sql = "insert into [dbo].[NguoiHoc](MaNH,HoTen,GioiTinh,NgaySinh,DienThoai,Email,MaNV,NgayDK) "+ "values (?,?,?,?,?,?,?,?)";
    //JdbcHelper.executeUpdate(sql,maNH[i],hotenNH[i],gioitinhNH[i],DateHelper.now(),sodtNH[i],emailNH[i],maNV[i],DateHelper.now());

    public static ResultSet executeQuery(String sql, Object... args) {
        try {
            PreparedStatement stmt = prepareStatement(sql, args);
            return stmt.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }//sample:String sql = "select * from NguoiHoc where MaNH like ?";
    //ResultSet rs = JdbcHelper.executeQuery(sql, "01");
}
