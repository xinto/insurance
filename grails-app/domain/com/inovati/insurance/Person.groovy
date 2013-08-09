package com.inovati.insurance

class Person {

	String     name
	String     secondName
	String     lastname
	String     secondLastname
	Gender     gender
	Profession profession
	Date       birthDate
	Address    personalAddress
	String     workCompanyName
	Address    workAddress
	String     telephone1
	String     telephone2
	String     email
	String     preferedName
	String     rfc
	String     curp
	Boolean    active
	String     isPayer
	Boolean    isContractor

	static hasMany = [policyPayer:Policy, policyContractor:Policy,
	                  insured:Insured,accounts:Account]
	                  
	static mappedBy = [policyPayer:"payer",policyContractor:"contractor"]


    static constraints = {

		name(nullable:true,blank:true)
		secondName(nullable:true,blank:true)
		lastname(nullable:true,blank:true)
		secondLastname(nullable:true,blank:true)
		gender(nullable:true,blank:true)
		profession(nullable:true,blank:true)
		birthDate(nullable:true,blank:true)
		personalAddress(nullable:true,blank:true)
		workCompanyName(nullable:true,blank:true)
		workAddress(nullable:true,blank:true)
		telephone1(nullable:true,blank:true)
		telephone2(nullable:true,blank:true)
		email(nullable:true,blank:true)
		preferedName(nullable:true,blank:true)
		rfc(nullable:true,blank:true)
		active(nullable:true,blank:true)
		isPayer(nullable:true,blank:true)
		isContractor(nullable:true,blank:true)
    }

    String toString(){
    	"${id} : ${name}"
    }
}
