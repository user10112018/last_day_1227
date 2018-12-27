package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteEachDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;


public class TestAllListAction extends ActionSupport implements SessionAware {

    public Map<String, Object> session;
    public ArrayList<UserListDTO> userList = new ArrayList<UserListDTO>();
	public String deleteFlg;
	public String result;

	public String userID;
	public String Password;

	UserListDTO dto = new UserListDTO();


	public String execute() throws SQLException {

		UserListDeleteEachDAO dao = new UserListDeleteEachDAO();
		UserListDTO dto = new UserListDTO();

//		これは間違い
//		if(deleteFlg == "1"){
		if(deleteFlg.equals("1")){

//			test 1  --- OK
			System.out.println("deleteFlg == 1");

//			test 2  --- OK? noError
			session.get("userList");

//			test 3  --- OK?
			System.out.println(session.get("userList"));
//			[com.internousdev.ecsite.dto.UserListDTO@5c82478c, com.internousdev.ecsite.dto.UserListDTO@15f65a32, com.internousdev.ecsite.dto.UserListDTO@2406da26, com.internousdev.ecsite.dto.UserListDTO@44b76661, com.internousdev.ecsite.dto.UserListDTO@ac7e75c]

//			test 4  --- NG!

//			String id = session.get("UserID").toString();
//			String userName = session.get("UserName").toString();
//
//			System.out.println(id);
//			System.out.println(userName);




//			test 5  --- NG

//			System.out.println(userID);
////			null
//
//			userID = session.get("UserID").toString();
//			System.out.println(userID);
////			ここでNullPointerError となる
//
//
//			dto = dao.getUserInfo(userID, Password);
//
//			session.put("UserID", dto.getUserID());
//			session.put("UserName", dto.getUserName());
//			session.put("Password", dto.getUserPassword());
//
//			System.out.println(dto.getUserID());
//			null

//			test 6




			result = SUCCESS;

		} else {

			result = SUCCESS;
		}


		return result;
	}

	public String getUserID(){
		return userID;
	}

	public void setUserID(String userID){
		this.userID = userID;
	}

	public String getPassword(){
		return Password;
	}

	public void setPassword(String Password) {
		this.Password = Password;
	}

	public String getDeleteFlg(){
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}


//	public Map<String, Object> getSession() {
//		return session;
//	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}


