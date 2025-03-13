package com.dao;

import com.entity.DiscussjiazhenggongsiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjiazhenggongsiVO;
import com.entity.view.DiscussjiazhenggongsiView;


/**
 * 家政公司评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-25 15:02:12
 */
public interface DiscussjiazhenggongsiDao extends BaseMapper<DiscussjiazhenggongsiEntity> {
	
	List<DiscussjiazhenggongsiVO> selectListVO(@Param("ew") Wrapper<DiscussjiazhenggongsiEntity> wrapper);
	
	DiscussjiazhenggongsiVO selectVO(@Param("ew") Wrapper<DiscussjiazhenggongsiEntity> wrapper);
	
	List<DiscussjiazhenggongsiView> selectListView(@Param("ew") Wrapper<DiscussjiazhenggongsiEntity> wrapper);

	List<DiscussjiazhenggongsiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiazhenggongsiEntity> wrapper);
	
	DiscussjiazhenggongsiView selectView(@Param("ew") Wrapper<DiscussjiazhenggongsiEntity> wrapper);
	
}
