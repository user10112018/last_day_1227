package com.internousdev.ecsite.action;

import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Map;

//import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;



public class ItemListDeleteCompleteAction extends ActionSupport {

	private ItemListDeleteCompleteDAO dao = new ItemListDeleteCompleteDAO();
	private String message;


	public String execute() throws SQLException {

		String result = ERROR;

		int res = dao.deleteItemList();

		if (res > 0) {
			setMessage("すべての商品 " + res + " 件を削除しました。");
			result = SUCCESS;

		} else if (res == 0) {
			setMessage("商品の削除に失敗しました。");
		}

		return result;
	}

		public String getMessage(){
			return this.message;
		}

		public void setMessage(String message) {
			this.message = message;
		}


}
