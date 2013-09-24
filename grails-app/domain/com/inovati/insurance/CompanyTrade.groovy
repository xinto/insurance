package com.inovati.insurance

class CompanyTrade {

	String  name
	Boolean active

    static hasMany = [companyTradeProducts:CompanyTradeProducts]

    static constraints = {
    	name(nullable:false,blank:false)
    	active(nullable:false,blank:false)
    }

    String toString(){
    	"${name}"
    }
}
