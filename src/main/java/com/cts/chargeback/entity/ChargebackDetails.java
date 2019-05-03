package com.cts.chargeback.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="chargebackdetails")
public class ChargebackDetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="t_id")
	long t_id;
	long accountNumber;
	float amount;
	Date date;
	int dispute;
	String reason;
	String remarks;
	@ManyToOne
	@JoinColumn(name="accountNumber",nullable=false,insertable=false,updatable=false)
	Customer customer;
	public ChargebackDetails() {
		super();
	}
	
	public ChargebackDetails(long t_id, long accountNumber, float amount, Date date, int dispute, String reason,
			String remarks, Customer customer) {
		super();
		this.t_id = t_id;
		this.accountNumber = accountNumber;
		this.amount = amount;
		this.date = date;
		this.dispute = dispute;
		this.reason = reason;
		this.remarks = remarks;
		this.customer = customer;
	}
	
	
	
	public long getT_id() {
		return t_id;
	}
	public ChargebackDetails(long t_id, float amount, Date date, int dispute, String reason, String remarks,
		Customer customer) {
	super();
	this.t_id = t_id;
	this.amount = amount;
	this.date = date;
	this.dispute = dispute;
	this.reason = reason;
	this.remarks = remarks;
	this.customer = customer;
}

	public void setT_id(long t_id) {
		this.t_id = t_id;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getDispute() {
		return dispute;
	}
	public void setDispute(int dispute) {
		this.dispute = dispute;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Override
	public String toString() {
		return "ChargebackDetails [t_id=" + t_id + ", accountNumber=" + accountNumber + ", amount=" + amount + ", date="
				+ date + ", dispute=" + dispute + ", reason=" + reason + ", remarks=" + remarks + "]";
	}

	

}
