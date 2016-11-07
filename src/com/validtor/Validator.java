package com.validtor;

import com.bean.Address;
import com.bean.Bank;
import com.bean.PersonalVO;

public interface Validator {

	boolean isDataEmpty(String data);

	String addressValidator(Address address);

	String personalValidator(PersonalVO pb);

	String bankValidator(Bank b);

}