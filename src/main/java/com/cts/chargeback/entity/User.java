package com.cts.chargeback.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BankRepresentative")
public class User {
	
	@Column(name="firstName")
	String firstName;
	@Column(name="lastName")
	String lastName;
	@Column(name="age")
	int age;
	@Column(name="gender")
	String gender;
	@Column(name="contact",length=10)
	long contact;
	@Column(name="city")
	String city;
	@Column(name="state")
	String state;
	@Id
	@Column(name="userId")
	String userId;
	@Column(name="password")
	String password;
	
	public User() {
		super();
	}
	
	

	public User(String userId, String password) {
		super();
		this.userId = userId;
		this.password = password;
	}



	public User(String firstName, String lastName, int age, String gender, long contact, String city,
			String state, String userId, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contact = contact;
		this.city = city;
		this.state = state;
		this.userId = userId;
		this.password = password;
	}

	

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "BankRepresentative [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", gender="
				+ gender + ", contact=" + contact + ", city=" + city + ", state=" + state + ", userId=" + userId
				+ ", password=" + password + "]";
	}
	
	
	

}
