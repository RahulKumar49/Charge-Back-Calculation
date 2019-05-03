package com.cts.chargeback.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.chargeback.entity.ChargebackDetails;
import com.cts.chargeback.entity.Customer;
import com.cts.chargeback.entity.RefundDetails;

@Repository("customerDAO")
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Customer> listAllCustomers() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query  query=session.createQuery("from Customer");
		List<Customer> list=query.getResultList();
		return list;
	}

	@Override
	@Transactional
	public List<Object[]> listAllChargeBacks() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer c INNER JOIN c.listChargeback cB where cB.dispute='1'");
		List<Object[]> details=query.getResultList();
		return details;
	}

	@Override
	@Transactional
	public void savePayment(ChargebackDetails chargebackDetails) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.save(chargebackDetails);
	}

	@Override
	@Transactional
	public List<ChargebackDetails> listAllTransactions(long accountNumber) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from ChargebackDetails cb WHERE cb.accountNumber = :acc_no");
		query.setParameter("acc_no", accountNumber);
		List<ChargebackDetails> transactions=query.getResultList();
		return transactions;
	}

	@Override
	@Transactional
	public List<ChargebackDetails> listChargeBackTransactions(long accountNumber) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from ChargebackDetails cb WHERE cb.accountNumber = :acc_no AND cb.dispute=1");
		query.setParameter("acc_no", accountNumber);
		List<ChargebackDetails> transactions=query.getResultList();
		return transactions;
	}
	
	@Override
	@Transactional
	public void changeRefundStatus(RefundDetails refund) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.save(refund);
	}

	@Override
	@Transactional
	public void deleteRefundDeatils(long t_id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("update ChargebackDetails cb set cb.dispute=:dis where t_id=:tId");
		query.setParameter("dis", 0);
		query.setParameter("tId",t_id);
		query.executeUpdate();
		
	}

	@Override
	@Transactional
	public ChargebackDetails getchargebackDetail(long transactionId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from ChargebackDetails cb WHERE cb.t_id=:tId");
		query.setParameter("tId", transactionId );
		ChargebackDetails getTransaction=(ChargebackDetails)query.getSingleResult();
	return getTransaction;
	}

	@Override
	@Transactional
	public void updatePaymentDetails(ChargebackDetails chargebackDetails) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.update(chargebackDetails);
	
		
		
	}
	
	
	//SEND NOTIFICATION TO CUSTOMER AFTER CHARGEBACK HAS BEEN REFUNDED
	
		/*public void sendmail(RefundDetails refund) {
			// TODO Auto-generated method stub
		       Customer customer;
		       String mail=customer.getEmail();
			   String from = "chargeback@gmail.com"; 
			      String to = "mail"+"@gmail.com";
			      String host = "localhost";//or IP address  
			  
			     //Get the session object  
			      Properties properties = System.getProperties();  
			      properties.setProperty("mail.smtp.host", host);  
			      Session session = Session.getDefaultInstance(properties);  
			   String status;
			      if(refund.getRefundStatus()==1)
			    {
			    	status="Accepted";
			    }
			    else
			    {
			    	 status="Rejected";
			    }
			     //compose the message  
			      try{  
			         MimeMessage message = new MimeMessage(session);  
			         message.setFrom(new InternetAddress(from));  
			         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
			         message.setSubject("Refund status for id="+refund.getT_id());  
			         message.setText("Your Refund for transaction id=" +refund.getT_id()+" of amount" +refund.getRefundAmount()+"is "+status+"wtih remarks" +refund.getComments());  
			  
			         // Send message  
			         Transport.send(message);  
			        
			  
			      }catch (MessagingException mex) {mex.printStackTrace();}  
			   }  */
			
		}
