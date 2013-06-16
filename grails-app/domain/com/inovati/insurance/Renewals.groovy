package com.inovati.insurance

class Renewals {
	Policy policy
	Date date

    static constraints = {
    	policy(nullable:false,blank:false)
    	date(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
