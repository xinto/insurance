package com.inovati.insurance

class Contractor {

	String 		name
	String 		lastname
	PayMaster 	paymaster

    static constraints = {
    	name(nullable:false,blank:false)
    	lastname(nullable:false,blank:false)
    	paymaster(nullable:false)
    }

    String toString(){
    	"${id} : ${name} ${lastname}"
    }
}
