package com.oracle.web.service;

import java.util.List;

import com.oracle.web.bean.Fenlei;
import com.oracle.web.bean.PageBean;


public interface FenleiService {

	List<Fenlei> list();

	int save(Fenlei fenlei);

	PageBean<Fenlei> selectAllByPageHelper(Integer pageNow);

	int counts();

	void delete(Fenlei fenlei);

	//Fenlei queryOneFenlei(Integer id);

	void update(Fenlei fenlei);

	Fenlei selectByPrimaryKey(Integer id);

	

	

	


	
	

}
