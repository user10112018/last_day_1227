package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteEachDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;



public class UserListDeleteEachAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	public ArrayList<UserListDTO> userList = new ArrayList<UserListDTO>();
	public String deleteFlg;
	public String result;

//	private UserListDAO userListDAO = new UserListDAO();



	public String execute() throws SQLException {

//		UserListDeleteEachDAO dao = new UserListDeleteEachDAO();

		if(deleteFlg.equals("1")) {

			delete();

			result = SUCCESS;

		} else {
			result = ERROR;
		}

		return result;
	}

	public void delete() throws SQLException {

		UserListDeleteEachDAO dao = new UserListDeleteEachDAO();

//		これはJSPファイルのpropertyで指定した名前の要素しかダメなのか
//		UserID をメールアドレスと仮定すれば固有のものとして扱えるかも

//		int id = Integer.parseInt(session.get("id").toString());
		String userID = session.get("UserID").toString();
		String userName = session.get("UserName").toString();

		dao.DeleteEach(userID, userName);
	}


	public String getDeleteFlg(){
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

}
