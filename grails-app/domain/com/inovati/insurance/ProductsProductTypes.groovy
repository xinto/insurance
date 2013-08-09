package com.inovati.insurance

class ProductsProductTypes {
    
	Product     product
	ProductType productType

	static hasMany = [companyTradeProducts:CompanyTradeProducts]

    static constraints = {
    	product(nullable:false,blank:false)
    	productType(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
