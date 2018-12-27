package com.internousdev.ecsite.dto;

public class ItemListDTO {

	private String ItemName;
	private int ItemPrice;
	private int ItemStock;

	public String getItemName(){
		return ItemName;
	}

	public void setItemName(String ItemName){
		this.ItemName = ItemName;
	}

	public int getItemPrice(){
		return ItemPrice;
	}

	public void setItemPrice(int ItemPrice){
		this.ItemPrice = ItemPrice;
	}

	public int getItemStock(){
		return ItemStock;
	}

	public void setItemStock(int ItemStock){
		this.ItemStock = ItemStock;
	}




}
