package com.entity.model;

import com.entity.YonghuzijinkoujianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 用户资金扣减
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-01-25 15:02:11
 */
public class YonghuzijinkoujianModel  implements Serializable {
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
	 * 扣减原因
	 */
	
	private String koujianyuanyin;
		
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
	 * 设置：扣减原因
	 */
	 
	public void setKoujianyuanyin(String koujianyuanyin) {
		this.koujianyuanyin = koujianyuanyin;
	}
	
	/**
	 * 获取：扣减原因
	 */
	public String getKoujianyuanyin() {
		return koujianyuanyin;
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
