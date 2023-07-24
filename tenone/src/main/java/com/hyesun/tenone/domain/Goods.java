package com.hyesun.tenone.domain;

import java.util.Date;

public class Goods {
/*
 * create table tb_goods (
	goodsId int auto_increment not null,
	sellerId varchar(30) not null,
    goodsName varchar(50) not null,
    goodsPrice int not null,
    goodsImg varchar(200) null,
    goodsStock int not null,
    goodsOtp varchar(50) not null,
    goodsDeli varchar(50) not null,
    goodsContents text,
    cateCode varchar(30),
    goodsStatu varchar(10),
    regDate timestamp default now(),
    updateDate timestamp default now(),
    primary key(goodsId, sellerId),
    foreign key(sellerId) references user_info(user_id)
);
 */
	private Integer goodsId;
	private String sellerId;
	private String goodsName;
	private Integer goodsPrice;
	private String goodsImg;
	private Integer goodsStock;
	private String goodsOtp;
	private String goodsDeli;
	private String goodsContents;
	private String cateCode;
	private String goodsStatu;
	private Date regDate;
	private Date updateDate;
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}
	public Integer getGoodsStock() {
		return goodsStock;
	}
	public void setGoodsStock(Integer goodsStock) {
		this.goodsStock = goodsStock;
	}
	public String getGoodsOtp() {
		return goodsOtp;
	}
	public void setGoodsOtp(String goodsOtp) {
		this.goodsOtp = goodsOtp;
	}
	public String getGoodsDeli() {
		return goodsDeli;
	}
	public void setGoodsDeli(String goodsDeli) {
		this.goodsDeli = goodsDeli;
	}
	public String getGoodsContents() {
		return goodsContents;
	}
	public void setGoodsContents(String goodsContents) {
		this.goodsContents = goodsContents;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	public String getGoodsStatu() {
		return goodsStatu;
	}
	public void setGoodsStatu(String goodsStatu) {
		this.goodsStatu = goodsStatu;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", sellerId=" + sellerId + ", goodsName=" + goodsName + ", goodsPrice="
				+ goodsPrice + ", goodsImg=" + goodsImg + ", goodsStock=" + goodsStock + ", goodsOtp=" + goodsOtp
				+ ", goodsDeli=" + goodsDeli + ", goodsContents=" + goodsContents + ", cateCode=" + cateCode
				+ ", goodsStatu=" + goodsStatu + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	
	
}
