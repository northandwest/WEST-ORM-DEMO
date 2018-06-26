package com.bucuoa.west.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bucuoa.west.demo.dao.ActDao;
import com.bucuoa.west.demo.entity.Act;
import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.SingleBaseService;

@Service
public class ActService extends SingleBaseService<Act,Long> {
	@Autowired
	private ActDao dao;

	public ISingleBaseDao<Act,Long> getDao() {
		return dao;
	}
	
	public List<Map<String,Object>> getList(Long palceId)
	{
		String sql  ="select * from activity where place_id={}";
		
		List<Map<String, Object>> queryListMap = dao.queryListMap(sql, palceId);
		
		return queryListMap;
	}
}
