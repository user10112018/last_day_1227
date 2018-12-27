package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
//import com.internousdev.ecsite.util.DateUtil;


public class ItemListDeleteCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
//	private DateUtil du = new DateUtil();

	private String sql = "DELETE FROM item_info_transaction";

	public int deleteItemList() throws SQLException {

		int res = 0;

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			res = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

//      res = 削除した件数
//		System.out.println(res);
		return res;
	}


}
