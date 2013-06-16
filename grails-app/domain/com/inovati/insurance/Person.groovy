package com.inovati.insurance

class Person {

	String name
	String lastname
	String secondLastname
	Gender gender
	Profession profession
	Date birthDate
	Address personalAddress
	Address workAddress
	String telephone1
	String telephone2

	static hasMany = [policys:Policy,insured:Insured]

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
