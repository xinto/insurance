package com.inovati.insurance

class Person {

	String name
	String lastname
	String secondLastname
	Gender gender
	Profession profession
	Date birthDate
	Address personalAddress
	String workCompanyName
	Address workAddress
	String telephone1
	String telephone2
	String email
	String preferedName
	String rfc
	Boolean active
	Boolean isPayer
	Boolean isContractor

	static hasMany = [policyPayer:Policy, policyContractor:Policy,insured:Insured,accounts:Account]
	static mappedBy = [policyPayer:"payer",policyContractor:"contractor"]


    static constraints = {

    	name(nullable:false,blank:false)
    	lastname()
    	secondLastname()
    	gender(nullable:false)
    }

    String toString(){
    	"${id} : ${name}"
    }
}
