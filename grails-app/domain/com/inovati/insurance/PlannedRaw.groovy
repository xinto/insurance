package com.inovati.insurance

class PlannedRaw {
	Double annualiedPlannedRaw
	Integer chargue
	PaymentForm paymentForm
	Integer accountNumber
	String bank
	Integer securityCode
	Date expiration
	Date chargueDay

	static hasMany=[policys:Policy]


    static constraints = {
    }

    String toString(){
    	$"{id}"
    }
}