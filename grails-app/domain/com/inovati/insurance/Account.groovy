package com.inovati.insurance

class Account {

	Person person
    Account account
    Integer accountNumber
    Integer	securityCode
    Date expiration
    Boolean active

	static hasMany = [basicRaw:BasicRaw,plannedRaw:PlannedRaw]

    static constraints = {
    }

    String toString(){
    	"${accountNumber}"
    }
    
}
