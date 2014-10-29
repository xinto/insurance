package com.pas.insurance

class Payment {

	Integer policyId
	Double  amount
	Date    paymentDate
	Boolean cancelled
	String  cancelledDescription
	Integer bountyId
	

    static constraints = {
    }
}
