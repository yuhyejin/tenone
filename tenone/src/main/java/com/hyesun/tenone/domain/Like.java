package com.hyesun.tenone.domain;

public class Like {
	
//	create table tb_like(
//			likeId int auto_increment primary key,
//			lgoodsId int not null,
//		    luserId varchar(100) not null,
//		    constraint tb_like_lgoodsId_fk foreign key(lgoodsId) references tb_goods(goodsId)
//		    on delete cascade,
//		    constraint tb_like_luserId_fk foreign key(luserId) references user_info(user_id)
//		    on delete cascade
//		);
	
	private Integer likeId;
	private Integer lgoodsId;
	private String luserId;
	
	public Integer getLikeId() {
		return likeId;
	}
	public void setLikeId(Integer likeId) {
		this.likeId = likeId;
	}
	public Integer getLgoodsId() {
		return lgoodsId;
	}
	public void setLgoodsId(Integer lgoodsId) {
		this.lgoodsId = lgoodsId;
	}
	public String getLuserId() {
		return luserId;
	}
	public void setLuserId(String luserId) {
		this.luserId = luserId;
	}
	
	@Override
	public String toString() {
		return "Like [likeId=" + likeId + ", lgoodsId=" + lgoodsId + ", luserId=" + luserId + "]";
	}
	
}
