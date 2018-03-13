package com.bucuoa.west.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bucuoa.west.demo.dao.ActDao;
import com.bucuoa.west.demo.entity.Act;
import com.bucuoa.west.orm.app.extend.IShardBaseDao;
import com.bucuoa.west.orm.app.extend.ShardBaseService;

@Service
public class ActService extends ShardBaseService<Act,Long> implements IShardBaseDao<Act,Long>{
	@Autowired
	private ActDao dao;

	public IShardBaseDao<Act,Long> getDao() {
		return dao;
	}



}
