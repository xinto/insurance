package com.inovati.insurance

class BasicRaw {

	String paymentConduit
	Integer accountNumber
	String bank
	Integer securityCode
	Currency currency
	PaymentForm paymentForm
	Double firstReceipt
	Double subsecuentReceipt
	Date expiration
	Double annualizedRaw
	Double comissionRaw

	static hasMany=[policys:Policy]

    static constraints = {
    }

    String toString(){
    	"${id}"
    }
}
