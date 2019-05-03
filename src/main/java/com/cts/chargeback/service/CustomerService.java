package com.cts.chargeback.service;

import java.util.List;

import com.cts.chargeback.entity.ChargebackDetails;
import com.cts.chargeback.entity.Customer;
import com.cts.chargeback.entity.RefundDetails;

public interface CustomerService {
	
	public List<Customer> getCustomerList();
	
	public List<Object[]> getChargeBackDetailsList();
	
	public List<ChargebackDetails> getTransactions(long accountNumber);
	
	public void addPayment(ChargebackDetails chargebackDetails);
	
	public List<ChargebackDetails> getChargeBackTransactions(long accountNumber);
	
	public void changeRefundStatus( RefundDetails refund);
	
	public ChargebackDetails getTransaction(long transactionId);

	public void updatePayment(ChargebackDetails chargebackDetails);
	/*	public void sendmail(RefundDetails refund);*/


}
