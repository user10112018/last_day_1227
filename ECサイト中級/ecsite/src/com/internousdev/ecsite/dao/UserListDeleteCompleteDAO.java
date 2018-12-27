package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;



public class UserListDeleteCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	private String sql = "DELETE FROM login_user_transaction";



	public int deleteUserList() throws SQLException {

		int res = 0;

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			res = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

//		res = 削除した件数
		return res;
	}

}
