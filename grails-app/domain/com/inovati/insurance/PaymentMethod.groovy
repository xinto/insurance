package com.inovati.insurance

class PaymentMethod {
	
	String name

	static hasMany =[policys:Policy]
	
    static constraints = {
    	name(nullable:false,blank:false)
    }

    String toString (){
    	"${name}"
    }
}
