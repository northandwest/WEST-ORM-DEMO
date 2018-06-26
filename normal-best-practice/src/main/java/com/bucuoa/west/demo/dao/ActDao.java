package com.bucuoa.west.demo.dao;

import org.springframework.stereotype.Repository;

import com.bucuoa.west.demo.entity.Act;
import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.spring.SpringSingleBaseDao;
@Repository
public class ActDao extends SpringSingleBaseDao<Act, Long> implements ISingleBaseDao<Act, Long>{

}						 
								 
									 
								 
								