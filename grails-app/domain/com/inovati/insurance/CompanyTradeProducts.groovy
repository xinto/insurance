package com.inovati.insurance

class CompanyTradeProducts {

	InsuranceCompany     insuranceCompany
	CompanyTrade         companyTrade
    ProductsProductTypes productsProductTypes

	static hasMany = [policys:Policy]

    static constraints = {
    	insuranceCompany(nullable:false,blank:false)
    	companyTrade(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
