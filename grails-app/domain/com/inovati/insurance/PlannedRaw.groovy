package com.inovati.insurance

class PlannedRaw {

	Double      annualiedPlannedRaw
	Integer     chargue
	PaymentForm paymentForm
	String      accountNumber
	String      bank
	String      securityCode
	Date        expiration
	Date        chargueDay

	static hasMany=[policys:Policy]

    static constraints = {
    }

    String toString(){
    	"${id}"
    }
}
