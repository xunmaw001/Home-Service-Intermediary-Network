package com.entity.vo;

import com.entity.YonghuzijinruzhangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 用户资金入账
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-25 15:02:11
 */
public class YonghuzijinruzhangVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 金额
	 */
	
	private String jine;
		
	/**
	 * 入账原因
	 */
	
	private String ruzhangyuanyin;
		
	/**
	 * 日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date riqi;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：金额
	 */
	 
	public void setJine(String jine) {
		this.jine = jine;
	}
	
	/**
	 * 获取：金额
	 */
	public String getJine() {
		return jine;
	}
				
	
	/**
	 * 设置：入账原因
	 */
	 
	public void setRuzhangyuanyin(String ruzhangyuanyin) {
		this.ruzhangyuanyin = ruzhangyuanyin;
	}
	
	/**
	 * 获取：入账原因
	 */
	public String getRuzhangyuanyin() {
		return ruzhangyuanyin;
	}
				
	
	/**
	 * 设置：日期
	 */
	 
	public void setRiqi(Date riqi) {
		this.riqi = riqi;
	}
	
	/**
	 * 获取：日期
	 */
	public Date getRiqi() {
		return riqi;
	}
			
}
