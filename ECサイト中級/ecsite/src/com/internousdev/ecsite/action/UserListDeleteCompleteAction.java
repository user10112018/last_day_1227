package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport {

	private UserListDeleteCompleteDAO dao = new UserListDeleteCompleteDAO();
	private String message;


	public String execute() throws SQLException {

		String result = ERROR;

		int res = dao.deleteUserList();

		if (res > 0) {
			setMessage("すべてのユーザー " + res + " 件を削除しました。");
			result = SUCCESS;

		} else if (res == 0) {
			setMessage("ユーザーの削除に失敗しました。");
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
