package com.cts.chargeback.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name="Customer")
@Table(name="customer_details")
public class Customer {
	
	@Id
	@Column(length=16)
	long accountNumber;
	String name;
	long contact;
	String email;
	String address;
	@OneToMany(mappedBy="customer")
	List<ChargebackDetails> listChargeback;
	
	
	public Customer() {
		super();
	}
	

	public Customer(long accountNumber, String name, long contact, String email, String address,
			List<ChargebackDetails> listChargeback) {
		super();
		this.accountNumber = accountNumber;
		this.name = name;
		this.contact = contact;
		this.email = email;
		this.address = address;
		this.listChargeback = listChargeback;
	}


	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}




	public List<ChargebackDetails> getListChargeback() {
		return listChargeback;
	}


	public void setListChargeback(List<ChargebackDetails> listChargeback) {
		this.listChargeback = listChargeback;
	}


	@Override
	public String toString() {
		return "Customer [accountNumber=" + accountNumber + ", name=" + name + ", contact=" + contact + ", email="
				+ email + ", address=" + address + ", listChargeback=" + listChargeback + "]";
	}




	


	

}
