package com.inovati.insurance

class Account {

	Person  person
    Account account
    String  accountNumber
    String	securityCode
    Date    expiration
    Boolean active

	static hasMany = [basicRaw:BasicRaw,plannedRaw:PlannedRaw]

    static constraints = {
    }

    String toString(){
    	"${accountNumber}"
    }
    
}
