package com.entity.view;

import com.entity.YonghuchongzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 用户充值
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-25 15:02:11
 */
@TableName("yonghuchongzhi")
public class YonghuchongzhiView  extends YonghuchongzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YonghuchongzhiView(){
	}
 
 	public YonghuchongzhiView(YonghuchongzhiEntity yonghuchongzhiEntity){
 	try {
			BeanUtils.copyProperties(this, yonghuchongzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
