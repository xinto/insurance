package com.inovati.insurance

class Policy {

	BasicRaw basicRaw
	PlannedRaw plannedRaw
	Person payer
	Person contractor
	Date startDate
	AssuredHouse assuredHouse
	String policyNumber
	Boolean	active
	PaymentMethod paymentMethod
	PaymentForm	paymentForm
	Integer assuredAmount
	Date chargingDate
	Integer yearsToPay
	Integer protectionYears
	CompanyTrade companyTrade
	AssuredCar assuredCar

	static hasMany = [payments:Payments,beneficiarys:Beneficiary,renewals:Renewals,insureds:Insured ]

    static constraints = {

    }

    String toString(){
    	"${policyNumber}"
    }
}
