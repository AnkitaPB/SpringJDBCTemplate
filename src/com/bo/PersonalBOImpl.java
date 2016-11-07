package com.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Address;
import com.bean.Bank;
import com.bean.PersonalVO;
import com.dao.PersonalDAO;

@Service 
public class PersonalBOImpl implements PersonalBO {
	@Autowired
	private PersonalDAO personalDAO=null;

	public PersonalDAO getPersonalDAO() {
		return personalDAO;
	}
	public void setPersonalDAO(PersonalDAO personalDAO) {
		this.personalDAO = personalDAO;
	}
	
	
	@Override
	public void insertPersonalDetail(PersonalVO personalVO, Address addressVO, Bank bankVO) throws Exception {
		personalDAO.insertPersonalDetail(personalVO, addressVO, bankVO);

	}
	
		
}

	
	

