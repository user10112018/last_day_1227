package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class UserListDeleteEachDAO {

	public UserListDTO getUserInfo(String userID, String Password) throws SQLException{

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		UserListDTO dto = new UserListDTO();

		String sql = "SELECT * FROM login_user_transaction WHERE login_id=? AND login_pass=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userID);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {

				dto.setUserID(rs.getString("login_id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setUserPassword(rs.getString("login_pass"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

		return dto;
	}



	public void DeleteEach(String id, String userName) throws SQLException {

	 DBConnector db = new DBConnector();
	 Connection con = db.getConnection();

	 String sql = "DELETE FROM login_user_transaction WHERE login_id = ? AND user_name = ?";

	 PreparedStatement ps;
//	 int result = 0;

	 try {

		ps = con.prepareStatement(sql);
//		ps.setInt(1, id);
		ps.setString(1, id);
		ps.setString(2, userName);

//		result = ps.executeUpdate();
		ps.executeUpdate();

	    } catch (SQLException e) {
		    e.printStackTrace();
	    } finally {
	    	con.close();
	    }
//	    return result;
  }
}
