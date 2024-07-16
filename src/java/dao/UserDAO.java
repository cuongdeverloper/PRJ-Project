/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import Database.ConnectionDB;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author baook
 */
public class UserDAO {
    
public List<User> getAll() throws Exception {
    List<User> list = new ArrayList<>();

    try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
         PreparedStatement smt = conn.prepareStatement("SELECT * FROM [User]")) {

        ResultSet rs = smt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("UserID");
            String UserName = rs.getString("UserName");
            String Password = rs.getString("Password");
            String Email = rs.getString("Email");
            int pri = rs.getInt("Priority");

            list.add(new User(id, UserName, Password, Email, pri));
        }

    } catch (Exception ex) {
        ex.printStackTrace(); 
    }

    return list;
}
    public User get(String e) throws Exception {
    User u = null;

    try {
        Connection conn = ConnectionDB.getConnectionWithSqlJdbc();

        PreparedStatement smt = conn.prepareStatement("SELECT * FROM [User] WHERE [UserID] = ?");
        smt.setString(1, e);

        ResultSet rs = smt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("UserID");
            String UserName = rs.getString("UserName");
            String Password = rs.getString("Password");
            String Email = rs.getString("Email");
            int pri = rs.getInt("Priority");

            u = new User(id, UserName, Password, Email, pri);
        }

        ConnectionDB.closeConnection(conn);

    } catch (SQLException ex) {
    }

    return u;
}


public void insert(User obj) throws Exception {
    try {
        Connection conn = ConnectionDB.getConnectionWithSqlJdbc();

        PreparedStatement smt = conn.prepareStatement("INSERT INTO [User] (([UserID], [UserName], [Password], [Email], [Priority])) VALUES (?, ?, ?, ?, ?)");
        smt.setInt(1, obj.getUserID());
        smt.setString(2, obj.getUserName());
        smt.setString(3, obj.getPassword());
        smt.setString(4, obj.getEmail());
        smt.setInt(5, obj.getPriority());


        smt.executeUpdate();
        ConnectionDB.closeConnection(conn);
    } catch (SQLException ex) {
        System.err.println(ex.getMessage());
    }
}

 


    public List<User> getByStatus(int e) throws Exception {
        List<User> list = new ArrayList<>();

        try {
            Connection conn = ConnectionDB.getConnectionWithSqlJdbc();

            PreparedStatement smt = conn.prepareStatement("SELECT * FROM [User] WHERE [Priority] = ?");
            smt.setInt(1, e);

            ResultSet rs = smt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("UserID");
            String UserName = rs.getString("UserName");
            String Password = rs.getString("Password");
            String Email = rs.getString("Email");
            int pri = rs.getInt("Priority");

            list.add(new User(id, UserName, Password, Email, pri));
            }

            ConnectionDB.closeConnection(conn);

        } catch (SQLException ex) {
        }

        return list;
    }

    public void update(User obj) throws Exception {
        try {
            Connection conn = ConnectionDB.getConnectionWithSqlJdbc();

            PreparedStatement smt = conn.prepareStatement("UPDATE [User] SET [UserName] = ?, [Password] = ?, [Email] = ?,[Priority] = ? WHERE [UserID] = ?");

            smt.setString(1, obj.getUserName());
            smt.setString(2, obj.getPassword());
            smt.setString(3, obj.getEmail());
            smt.setInt(4, obj.getPriority());
            smt.setInt(5, obj.getUserID());


            smt.executeUpdate();
            ConnectionDB.closeConnection(conn);
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }
    
   public boolean deleteUserById(String userId) {
    Connection conn = null;
    PreparedStatement deleteReviewsStmt = null;
    PreparedStatement deleteUserStmt = null;

    try {
        conn = ConnectionDB.getConnectionWithSqlJdbc();
        conn.setAutoCommit(false); // Bắt đầu transaction

        // Xoá các bài đánh giá liên quan đến người dùng
        deleteReviewsStmt = conn.prepareStatement("DELETE FROM [Review] WHERE [UserID] = ?");
        deleteReviewsStmt.setString(1, userId);
        deleteReviewsStmt.executeUpdate();

        // Xoá người dùng
        deleteUserStmt = conn.prepareStatement("DELETE FROM [User] WHERE [UserID] = ?");
        deleteUserStmt.setString(1, userId);
        int rowsDeleted = deleteUserStmt.executeUpdate();

        conn.commit(); // Hoàn tất transaction

        return rowsDeleted > 0;
    } catch (Exception e) {
        if (conn != null) {
            try {
                conn.rollback(); // Rollback nếu có lỗi
            } catch (SQLException rollbackEx) {
                rollbackEx.printStackTrace();
            }
        }
        e.printStackTrace();
        return false;
    } finally {
        try {
            if (deleteReviewsStmt != null) deleteReviewsStmt.close();
            if (deleteUserStmt != null) deleteUserStmt.close();
            if (conn != null) conn.close();
        } catch (SQLException closeEx) {
            closeEx.printStackTrace();
        }
    }
}

    
    public static void main(String[] args) throws Exception {
        UserDAO u = new UserDAO();
       List<User > l =  u.getByStatus(1);
       
       for(User m : l) {
           System.out.println(m.toString());
       }
    }
}
