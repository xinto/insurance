package com.inovati.insurance

class AssuredHouse {

	Address address
	Integer estimatedValue
	

	static hasMany = [policys:Policy]

    static constraints = {
    	address(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
