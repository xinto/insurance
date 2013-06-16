package com.inovati.insurance

class CarBrand {

	String name

	static hasMany=[carModel:CarModel]

    static constraints = {
    	name(nullable:false,blank:false)
    	
    }

    String toString(){
    	"${name}"
    }
}
