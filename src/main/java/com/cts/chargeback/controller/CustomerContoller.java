package com.cts.chargeback.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.chargeback.entity.ChargebackDetails;
import com.cts.chargeback.entity.Customer;
import com.cts.chargeback.entity.RefundDetails;
import com.cts.chargeback.entity.User;
import com.cts.chargeback.service.CustomerService;
import com.cts.chargeback.service.UserService;

@Controller
@RequestMapping("/customer")
public class CustomerContoller {
	
	@Autowired
	CustomerService customerService;
	
	final static Logger logger = Logger.getLogger(CustomerContoller.class);
	
	@Autowired
	UserService userService;
	
	@GetMapping("/list")
	public String getCustomerList(Model model,Principal principal){
		String username=principal.getName();
		logger.info("List of account holders");
		User userDetails=userService.findUserDetails(username);
		List<Customer> customerList=customerService.getCustomerList();
		if(customerList.size()==0){
			model.addAttribute("list",0);
		}
		else if(customerList.size()>0){
			model.addAttribute("list",1);
			model.addAttribute("customers", customerList);
		}
		model.addAttribute("profile", userDetails);
		return "customerlist";
	}
	
	@GetMapping("/cbDetails")
	public String getChargeBackDetails(Model model,Principal principal){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		List<Object[]> chargebackDetails=customerService.getChargeBackDetailsList();
		logger.debug("List to fetch account holders with chargebacks");
		if(chargebackDetails.size()==0){
			model.addAttribute("list",0);
		}
		else if(chargebackDetails.size()>0){
			Set<Customer> listCustomer=new HashSet<>();
			for(int i=0;i<chargebackDetails.size();i++)
			{
				listCustomer.add((Customer)(chargebackDetails.get(i)[0]));
			}
			model.addAttribute("list",1);
			model.addAttribute("cbDetails", listCustomer);
		}
		model.addAttribute("profile", userDetails);
		return "chargebackdetails";
	}
	
	@GetMapping("/transactions")
	public String viewTransactions(@RequestParam("id") long accountNumber,Model model,Principal principal){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		List<ChargebackDetails> chargebackDetails=customerService.getTransactions(accountNumber);
		if(chargebackDetails.size()==0){
			model.addAttribute("list",0);
		}
		else if(chargebackDetails.size()>0){
			model.addAttribute("list",1);
			model.addAttribute("cbDetails", chargebackDetails);
		}
		return "transaction";
	}
	
	@GetMapping("/add")
	public String addPayments(@RequestParam("id") long accountNumber,Model model,Principal principal){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		model.addAttribute("accountNumber", accountNumber);
		return "addpayment";
	}
	
	@PostMapping("/capturePayment")
	public String savePayment(@ModelAttribute("payment") ChargebackDetails chargebackDetails,@RequestParam("accountNumber") long acc){
		customerService.addPayment(chargebackDetails);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/cbTransactions")
	public String getChargeBackTransactions(@RequestParam("id") long accountNumber,Model model,Principal principal){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		List<ChargebackDetails> listTransactions=customerService.getChargeBackTransactions(accountNumber);
		model.addAttribute("transactions", listTransactions);
		return "cb_transaction";
	}
	@GetMapping("/openRefundPage")
	public String openRefundPage(@RequestParam("id") long transactionId ,Model model,Principal principal){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		ChargebackDetails singleChargeback= customerService.getTransaction(transactionId);
		logger.debug("Chargeback Amount : "+singleChargeback.getAmount());
		model.addAttribute("transaction",singleChargeback);
		
		return "RefundDetails";
		
	}
	
	@PostMapping("/changeStatus")
	public String changeStatus(@ModelAttribute("refundDetails") RefundDetails refund){
		  /* System.out.println("In changeStstus");*/
		   System.out.println(refund.getT_id());
		   System.out.println("In refund Controller");
		 
		   /*ChargebackDetails charge=new ChargebackDetails();
		   System.out.println(charge.getRefundDetails().getRefundAmount());
		   System.out.println( refund.getRefundAmount());
		 System.out.println(refund);*/
		   customerService.changeRefundStatus(refund);
		   // customerService.sendmail(refund);
		return "redirect:/customer/cbDetails";
		 
	   }
	@GetMapping("/edit")
	public String editChargeBack(@RequestParam("id") long transactionId ,Model model,Principal principal)
	{
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		ChargebackDetails singleChargebac= customerService.getTransaction(transactionId);
		model.addAttribute("transaction",singleChargebac);
		
	return "UpdateChargeback";	
	}
	
	@PostMapping("/updatePayment")
	public String updatepayment(@ModelAttribute("updatepayment") ChargebackDetails chargebackDetails)
	{
		customerService.updatePayment(chargebackDetails);
		return "redirect:/customer/cbTransactions?id="+chargebackDetails.getAccountNumber();
		
	}
	
	@GetMapping("/about")
	public String showAbout(Principal principal,Model model){
		String username=principal.getName();
		User userDetails=userService.findUserDetails(username);
		model.addAttribute("profile", userDetails);
		return "about";
	}

}
