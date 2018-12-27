package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteEachDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class TestAllListItemAction extends ActionSupport implements SessionAware  {


//		fields

		public Map<String, Object> session;
		public String deleteFlg;
		public String result;


//		methods
		public String execute() throws SQLException {

			ItemListDeleteEachDAO dao = new ItemListDeleteEachDAO();
			LoginDTO dto = new LoginDTO();
			ItemListDTO dto2 = new ItemListDTO();

//			if(deleteFlg == null) {
	//
//				System.out.println("deleteFlg == null");
	//
//				String id = session.get("UserID").toString();
//				String pass = session.get("UserPassword").toString();
	//
//				dto2 = dao.getUserInfo(id, pass);

			if(deleteFlg.equals("1")){

//				int index = session.in
	//
//				System.out.println(id);
//				System.out.println(pass);

				if(session.containsKey("itemList")){
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




