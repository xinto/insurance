package com.inovati.insurance

class PaymentForm {
	
	String name

	static hasMany =[plannedRaws:PlannedRaw,basicRaws:BasicRaw,
	                 policys:Policy]
	                 
    static constraints = {
    	name(nullable:false,blank:false)
    }

    String toString (){
    	"${name}"
    }
}
