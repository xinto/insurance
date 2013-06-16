package com.inovati.insurance

class BasicRaw {

	String paymentConduit
	Integer accountNumber
	String bank
	Integer securityCode
	Currency Currency
	PaymentForm paymentForm
	String firstReceipt
	String subsecuentReceipt
	Date expiration
	String annualizedRaw
	String comissionRaw

	static hasMany=[policys:Policy]

    static constraints = {
    }

    String toString(){
    	$"{id}"
    }
}
