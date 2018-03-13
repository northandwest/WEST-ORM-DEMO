package com.bucuoa.west.demo.dao;

import org.springframework.stereotype.Repository;

import com.bucuoa.west.demo.entity.Act;
import com.bucuoa.west.orm.app.extend.IShardBaseDao;
import com.bucuoa.west.orm.app.extend.spring.SpringShardBaseDao;
@Repository
public class ActDao extends SpringShardBaseDao<Act, Long> implements IShardBaseDao<Act, Long>{

}						 
								 
									 
								 
								