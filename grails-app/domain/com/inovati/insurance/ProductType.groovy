package com.inovati.insurance

class ProductType {

	String type

	static hasMany = [productsProductTypes:ProductsProductTypes]

    static constraints = {
    	type(nullable:false,blank:false)
    }

    String toString(){
    	"${type}"
    }
}
