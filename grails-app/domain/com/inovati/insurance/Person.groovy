package com.inovati.insurance

class Person {

	String name
	String lastname
	String secondLastname
	Gender gender

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
