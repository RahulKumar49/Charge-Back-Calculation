package com.cts.chargeback.dao;

import java.util.List;

import com.cts.chargeback.entity.ChargebackDetails;
import com.cts.chargeback.entity.Customer;
import com.cts.chargeback.entity.RefundDetails;

public interface CustomerDAO {
	
	public List<Customer> listAllCustomers();
	public List<Object[]> listAllChargeBacks();
	public List<ChargebackDetails> listAllTransactions(long accountNumber);
	public void savePayment(ChargebackDetails chargebackDetails);
	List<ChargebackDetails> listChargeBackTransactions(long accountNumber);
	public void changeRefundStatus(RefundDetails refund);
	public void deleteRefundDeatils(long t_id);
	public ChargebackDetails getchargebackDetail(long transactionId);
	public void updatePaymentDetails(ChargebackDetails chargebackDetails);
	// public void sendmail(RefundDetails refund);

}
