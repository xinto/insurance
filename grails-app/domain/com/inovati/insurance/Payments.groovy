package com.inovati.insurance

class Payments {

	Policy policy
	Date date
	Integer amount

    static constraints = {
    	policy(nullable:false,blank:false)
    	date(nullable:false,blank:false)
    	amount(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
