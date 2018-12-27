package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

//import com.internousdev.ecsite.dao.UserListDAO;
//import com.internousdev.ecsite.dto.UserListDTO;


//   UserInfoDeleteAction.java
public class SampleAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;

	 private String id;

	 private String selectedId;

	 public String execute() {

	  String result=ERROR;

	  UserInfoDAO userInfoDAO = new UserInfoDAO();

	  int count = 0;

	  List<String> deleteErrorMessageList = new ArrayList<String>();

	   selectedId = String.valueOf((selectedId.split(", ",0))[0]);

	   int intSelectedId = Integer.parseInt(selectedId);

	   id = String.valueOf((id.split(", ",0))[intSelectedId]);

	   System.out.println(id);

	   count += userInfoDAO.delete(id);

	   if(count <= 0) {

	   deleteErrorMessageList.add("削除失敗しました。");

	   session.put("deleteErrorMessageList", deleteErrorMessageList);

	   return ERROR;

	  }else {

	   List<UserInfoDTO> userInfoDtoList = new ArrayList<UserInfoDTO>();

	   userInfoDtoList = userInfoDAO.getUserInfoAll();

	   Iterator<UserInfoDTO> iterator = userInfoDtoList.iterator();

	   if(!(iterator.hasNext())) {

	    userInfoDtoList = null;

	   }

	   session.put("userInfoDtoList", userInfoDtoList);




	   result=SUCCESS;

	  }

	  return result;

	 }

	 public Map<String, Object> getSession() {

	  return session;

	 }

	 public void setSession(Map<String, Object> session) {

	  this.session = session;

	 }

	 public String getId() {

	  return id;

	 }

	 public void setId(String id) {

	  this.id = id;

	 }

	 public String getSelectedId() {

	  return selectedId;

	 }

	 public void setSelectedId(String selectedId) {

	  this.selectedId = selectedId;

	 }







	}



