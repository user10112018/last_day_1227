package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

//	loginDTO で必要だったけどここでは不要
//	private UserListDTO dto = new UserListDTO();

	ArrayList<UserListDTO> userList = new ArrayList<UserListDTO>();



	public ArrayList<UserListDTO> select(){

		String sql = "SELECT * FROM login_user_transaction";

		try {

			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){

				UserListDTO dto = new UserListDTO();

				dto.setUserID(rs.getString("login_id"));
				dto.setUserPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));

				userList.add(dto);
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}

}
