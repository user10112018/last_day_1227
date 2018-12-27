package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;



public class ItemListAction extends ActionSupport implements SessionAware {

	private ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();
	private Map<String, Object> session;
	private ItemListDAO dao = new ItemListDAO();

	public String execute(){

		String ret = ERROR;

		itemList = dao.select();

		if(itemList.size() > 0) {

			session.put("itemList", itemList);
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

}
