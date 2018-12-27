package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;


public class ItemCreateCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private DateUtil du = new DateUtil();

//	add 1105
	public Map<String, Object> session;

	private String sql = "INSERT INTO item_info_transaction(item_name, item_price, item_stock, insert_date) VALUES(?,?,?,?)";

//	original
	public void createItem(String itemName, int itemPrice, int itemStock) throws SQLException {


		try {

//			修正 @1105
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);

//			itemPrice と itemStock は int 型で挿入できる
			ps.setInt(2, itemPrice);
			ps.setInt(3, itemStock);

			ps.setString(4, du.getDate());


			ps.execute();


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}

//	1105 必要かと思ったがやっぱりいらないかも
//	@Override
//	public void setSession(Map<String, Object> session) {
//		this.session = session;
//	}


}
