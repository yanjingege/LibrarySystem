package com.oracle.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.web.bean.Fenlei;
import com.oracle.web.mapper.FenleiMapper;
import com.oracle.web.service.FenleiService;


@Service
public class FenleiServiceImpl implements FenleiService {
	
	@Autowired
	private FenleiMapper fenleiMapper;


	@Override
	@Transactional(readOnly = true)
	public List<Fenlei> list() {
		// TODO Auto-generated method stub
		return this.fenleiMapper.selectAllWithOneSQL();
	}

	@Override
	@Transactional
	public int save(Fenlei fenlei) {
		// TODO Auto-generated method stub
		return this.fenleiMapper.insert(fenlei);
	}

}
