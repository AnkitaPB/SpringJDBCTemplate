package com.bean;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class PersonalVO implements Serializable {
	private static final long serialVersionUID = 1L;
	@NotBlank
	@Size(min=3,max=10)
	private String firstName;
	@NotBlank
	@Size(min=3,max=10)
	private String middletName;
	@NotBlank
	@Size(min=3,max=10)
	private String lastName;
	@NotBlank
	@Size(min=3,max=10)
	private String gender;

	public PersonalVO() {
	super();
	
	}
	public String getFirstName() {
	return firstName;
	}
	public void setFirstName(String firstName) {
	this.firstName = firstName;
	}
	public String getMiddletName() {
	return middletName;
	}
	public void setMiddletName(String middletName) {
		this.middletName = middletName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	 
 
}
