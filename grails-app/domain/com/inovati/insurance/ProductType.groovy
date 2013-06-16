package com.inovati.insurance

class ProductType {

	String type

	static hasMany = [productsProductTypes:ProductsProductTypes]

    static constraints = {
    	description(nullable:false,blank:false)
    }

    String toString(){
    	"${type}"
    }
}
