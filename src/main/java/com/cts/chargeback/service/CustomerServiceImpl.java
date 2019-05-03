package com.cts.chargeback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.chargeback.dao.CustomerDAO;
import com.cts.chargeback.entity.ChargebackDetails;
import com.cts.chargeback.entity.Customer;
import com.cts.chargeback.entity.RefundDetails;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerDAO customerDAO;
	
	@Override
	public List<Customer> getCustomerList() {
		// TODO Auto-generated method stub
		return customerDAO.listAllCustomers();
	}

	@Override
	public List<Object[]> getChargeBackDetailsList() {
		// TODO Auto-generated method stub
		return customerDAO.listAllChargeBacks();
	}

	@Override
	public void addPayment(ChargebackDetails chargebackDetails) {
		// TODO Auto-generated method stub
		customerDAO.savePayment(chargebackDetails);
	}

	@Override
	public List<ChargebackDetails> getTransactions(long accountNumber) {
		// TODO Auto-generated method stub
		return customerDAO.listAllTransactions(accountNumber);
	}

	@Override
	public List<ChargebackDetails> getChargeBackTransactions(long accountNumber) {
		// TODO Auto-generated method stub
		return customerDAO.listChargeBackTransactions(accountNumber);
	}
	
	@Override
	public void changeRefundStatus( RefundDetails refund) {
		// TODO Auto-generated method stub
		System.out.println("in Dao");
		customerDAO.changeRefundStatus(refund);
		System.out.println("test1");
		customerDAO.deleteRefundDeatils(refund.getT_id());
		
	}

	@Override
	public ChargebackDetails getTransaction(long transactionId) {
		// TODO Auto-generated method stub
		return customerDAO.getchargebackDetail(transactionId) ;
	}

	@Override
	public void updatePayment(ChargebackDetails chargebackDetails) {
		// TODO Auto-generated method stub
		customerDAO.updatePaymentDetails(chargebackDetails);
		
	}
	
	//SEND NOTIFICATION
	/*@Override
	public void sendmail(RefundDetails refund) {
		// TODO Auto-generated method stub
		customerDAO.sendmail(refund);
		
	}*/

}
