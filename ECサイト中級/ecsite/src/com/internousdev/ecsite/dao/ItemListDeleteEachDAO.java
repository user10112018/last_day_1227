package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class ItemListDeleteEachDAO {

	public ItemListDTO getItemInfo(String itemName, int itemPrice) throws SQLException{

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ItemListDTO dto = new ItemListDTO();

		String sql = "SELECT * FROM item_info_transaction WHERE item_name=? AND item_price=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setInt(2, itemPrice);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {

				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getInt("item_price"));
				dto.setItemStock(rs.getInt("item_stock"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return dto;
	}


	public void DeleteEach(String itemName, int itemPrice) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "DELETE FROM item_info_transaction WHERE itemName=? AND itemPrice=?";

		PreparedStatement ps;

		try {

			ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setInt(2, itemPrice);

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}

}
