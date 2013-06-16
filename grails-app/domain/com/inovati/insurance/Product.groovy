package com.inovati.insurance

class Product {

	String name
	String description

	static hasMany = [productsProductTypes:ProductsProductTypes]

    static constraints = {
    	name(nullable:false,blank:false)
    }

    String toString(){
    	"${name}"
    }
}
