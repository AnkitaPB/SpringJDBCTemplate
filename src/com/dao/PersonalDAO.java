package com.dao;

import java.sql.SQLException;

import com.bean.Address;
import com.bean.Bank;
import com.bean.PersonalVO;

public interface PersonalDAO {

//	void insertPersonalInfo(PersonalVO personalVO) throws SQLException, ClassNotFoundException;

	int getPrimaryKey(PersonalVO personalVO) throws ClassNotFoundException, SQLException;

	public void insertPersonalDetail(PersonalVO personalVO, Address addressVO, Bank bankVO) throws Exception;


}