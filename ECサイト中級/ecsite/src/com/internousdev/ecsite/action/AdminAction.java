package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport implements SessionAware {

	private ArrayList<LoginDTO> loginDTOList = new ArrayList<LoginDTO>();
	private Map<String, Object> session;
	private LoginDAO dao = new LoginDAO();

	public String execute(){

		String ret = ERROR;


		loginDTOList = dao.select();

		if(loginDTOList.size() >= 0) {

			session.put("loginDTOList", loginDTOList);
			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<LoginDTO> getLoginUserList(){
		return this.loginDTOList;
	}

}
