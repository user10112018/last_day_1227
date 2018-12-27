package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteEachDAO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class TestAllList2Action extends ActionSupport implements SessionAware {

//	fields

	public Map<String, Object> session;
	public String deleteFlg;
	public String result;


//	methods
	public String execute() throws SQLException {

		UserListDeleteEachDAO dao = new UserListDeleteEachDAO();
		LoginDTO dto = new LoginDTO();
		UserListDTO dto2 = new UserListDTO();

//		if(deleteFlg == null) {
//
//			System.out.println("deleteFlg == null");
//
//			String id = session.get("UserID").toString();
//			String pass = session.get("UserPassword").toString();
//
//			dto2 = dao.getUserInfo(id, pass);

		if(deleteFlg.equals("1")){

//			int index = session.in
//
//			System.out.println(id);
//			System.out.println(pass);

			if(session.containsKey("userList")){
				System.out.println("OK");

				for (String key : session.keySet()){
					System.out.println(key);
				}

				for (Object val : session.values()){
					System.out.println(val);
				}


			} else {
				System.out.println("none");
			}

		}
		result = SUCCESS;
		return result;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
