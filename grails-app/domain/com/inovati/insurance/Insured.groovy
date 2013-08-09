package com.inovati.insurance

class Insured {

	Person person
	Policy policy

    static constraints = {
    	person(nullable:false,blank:false)
    	policy(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
