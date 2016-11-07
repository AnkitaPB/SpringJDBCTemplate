package com.dao;


import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Address;
import com.bean.Bank;
import com.bean.PersonalVO;

@Repository
public class PersonalDAOImpl implements PersonalDAO {
	protected final Log logger = LogFactory.getLog(getClass());
	@Autowired
	private DataSource dataSource;
   	private JdbcTemplate jdbcTemplate;
	
	
    public DataSource getDataSource() {
		return dataSource;
	}

    
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}


	/*@Override
	public void insertPersonalInfo(PersonalVO personalVO) throws SQLException, ClassNotFoundException
    {
    	System.out.println("PersonalDAO started..."+personalVO.getFirstName()+personalVO.getGender());
		final String insertPersonalInfo="insert into personal (fname,mname,lname,gender)values(?,?,?,?)";
    	Object[] o=new Object[4];
    	o[0]=personalVO.getFirstName();
    	o[1]=personalVO.getMiddletName();
    	o[2]=personalVO.getLastName();
    	o[3]=personalVO.getGender();
		jdbcTemplate = new JdbcTemplate(dataSource);

    	this.jdbcTemplate.update(insertPersonalInfo, o);
    	System.out.println("personalDAO Completed");
    }*/
    	
    	
	public int getPrimaryKey(PersonalVO personalVO) throws ClassNotFoundException, SQLException
	{
		final String PRIMARY_KEY_QUERY="select pid from personal where fname=? and mname=? and lname=? and gender=?";
		Object[] o=new Object[4];
    	o[0]=personalVO.getFirstName();
    	o[1]=personalVO.getMiddletName();
    	o[2]=personalVO.getLastName();
    	o[3]=personalVO.getGender();
						
		int primaryKey=jdbcTemplate.queryForInt(PRIMARY_KEY_QUERY, o);		
		System.out.println("primary key:"+ primaryKey);
		return primaryKey;
		
	}


	@Override
	public void insertPersonalDetail(PersonalVO personalVO, Address addressVO, Bank bankVO) throws Exception {
		
		final String INSERT_PERSONALINFO="insert into personal (fname,mname,lname,gender)values(?,?,?,?)";
    	Object[] o=new Object[4];
    	o[0]=personalVO.getFirstName();
    	o[1]=personalVO.getMiddletName();
    	o[2]=personalVO.getLastName();
    	o[3]=personalVO.getGender();
		jdbcTemplate = new JdbcTemplate(dataSource);
    	jdbcTemplate.update(INSERT_PERSONALINFO, o);
    	createAddress(addressVO,personalVO);
        createBank(bankVO, personalVO);


		
	}


	private void createBank(Bank bankVO, PersonalVO personalVO) throws ClassNotFoundException, SQLException {
		final String INSERT_BANK_QUERY="insert into bank(bname,accno,ssn,pid) values(?,?,?,?)";
		Object[] o3=new Object[4];
		System.out.println("In create Bank:");
	
		int p=getPrimaryKey(personalVO);
		o3[0]=bankVO.getBankName();
		o3[1]=bankVO.getAccountNumber();
		o3[2]=bankVO.getSsn();
		o3[3]=p;
		jdbcTemplate=new JdbcTemplate(dataSource);
		this.jdbcTemplate.update(INSERT_BANK_QUERY, o3);

	}


	private void createAddress(Address addressVO,PersonalVO personalVO) throws ClassNotFoundException, SQLException {
		final String INSERT_ADDRESS="insert into address (address,city,state,country,pincode,pid) values (?,?,?,?,?,?)";
		Object o1[]=new Object[6];
		int p=getPrimaryKey(personalVO);
		System.out.println("aDDRESSvo:"+ addressVO.getAddress());
		o1[0]=addressVO.getAddress();
		o1[1]=addressVO.getCity();
		o1[2]=addressVO.getState();
		o1[3]=addressVO.getCountry();
		o1[4]=addressVO.getPinCode();
		o1[5]=p;				
		jdbcTemplate=new JdbcTemplate(dataSource);
		jdbcTemplate.update(INSERT_ADDRESS,o1);
	}
    

}
