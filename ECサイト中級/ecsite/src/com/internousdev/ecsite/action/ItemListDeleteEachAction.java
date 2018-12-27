package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteEachDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteEachAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	public ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();
	public String deleteFlg;
	public String result;


	public String execute() throws SQLException {

		if(deleteFlg.equals("1")) {

			delete();

			result = SUCCESS;

		} else {

			result = ERROR;
		}

		return result;
	}


	public void delete() throws SQLException {

		ItemListDeleteEachDAO dao = new ItemListDeleteEachDAO();

		String itemName = session.get("ItemName").toString();
		int itemPrice = Integer.parseInt(session.get("ItemPrice").toString());

		dao.DeleteEach(itemName, itemPrice);
	}


	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
