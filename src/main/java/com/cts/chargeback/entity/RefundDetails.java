package com.cts.chargeback.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="refundDetails")
public class RefundDetails {
	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	long refund_id;
	
	@Column(name="t_id")
	long t_id;
	
	@Column(name="refundStatus")
	int refundStatus;
	@Column(name="refundAmount")
	float refundAmount;	
	@Column(name="comments")
	String comments;
	
	
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="t_id",nullable=false,insertable=false,updatable=false)
	ChargebackDetails chargeBack;
	
	public RefundDetails(int refundStatus, float refundAmount, String comments) {
		
		this.refundStatus = refundStatus;
		this.refundAmount = refundAmount;
		this.comments = comments;
	}
   /*@Id
	@OneToOne(targetEntity=transcation.class,cascade=CascadeType.ALL)
	@JoinColumn(name="trans_id",referencedColumnName="t_id")
	private  transaction trans;
*/
	
	
	public int getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(int refundStatus) {
		this.refundStatus = refundStatus;
	}
	
	public float getRefundAmount() {
		return refundAmount;
	}

	public void setRefundAmount(float refundAmount) {
		this.refundAmount = refundAmount;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
	

	/*public transaction getTrans() {
		return trans;
	}

	public void setTrans(transaction trans) {
		this.trans = trans;
	}*/

	

	public RefundDetails() {
		
	}


	public long getRefund_id() {
		return refund_id;
	}


	public void setRefund_id(long refund_id) {
		this.refund_id = refund_id;
	}


	public long getT_id() {
		return t_id;
	}


	public void setT_id(long t_id) {
		this.t_id = t_id;
	}


	public ChargebackDetails getChargeBack() {
		return chargeBack;
	}


	public void setChargeBack(ChargebackDetails chargeBack) {
		this.chargeBack = chargeBack;
	}
	public RefundDetails(long refund_id, long t_id, int refundStatus, float refundAmount, String comments,
			ChargebackDetails chargeBack) {
		super();
		this.refund_id = refund_id;
		this.t_id = t_id;
		this.refundStatus = refundStatus;
		this.refundAmount = refundAmount;
		this.comments = comments;
		this.chargeBack = chargeBack;
	}


	public RefundDetails(long t_id, int refundStatus, float refundAmount, String comments,
			ChargebackDetails chargeBack) {
		super();
		this.t_id = t_id;
		this.refundStatus = refundStatus;
		this.refundAmount = refundAmount;
		this.comments = comments;
		this.chargeBack = chargeBack;
	}



	
	
	
	

}
