package com.inovati.insurance

class InsuranceCompany {

	String  name
	String  description
	Boolean active

	static hasMany = [companyTradeProducts:CompanyTradeProducts]

    static constraints = {
    	name(nullable:false,blank:false)
        description(nullable:false, blank:false)
        active(nullable:false,blank:false)
    }

    String toString(){
    	"${name}"
    }
}
