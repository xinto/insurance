package com.inovati.insurance

class PayMaster {

	String name
	String lastname

    static constraints = {
    	name(nullable:false,blank:false)
    	lastname(nullable:false,blank:false)
    }

    static hasMany = [contractors:Contractor]

    String toString(){
    	"${id} : ${name} ${lastname}"
    }
}
