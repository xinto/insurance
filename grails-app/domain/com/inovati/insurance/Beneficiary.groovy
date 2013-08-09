package com.inovati.insurance

class Beneficiary {

	Policy  policy
	String  type
	String  name
	Integer percentage

    static constraints = {
    	policy(nullable:false,blank:false)
    	type(nullable:false,blank:false)
    	name(nullable:false,blank:false)
    	percentage(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
