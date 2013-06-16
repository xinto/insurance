package com.inovati.insurance

class Address {

	String street
	String number
	String colony
	Integer postalCode
	String city
	String state
	String delegation

	static hasMany = [people:Person, houses:AssuredHouse]


    static constraints = {
    }

    String toString(){
    	"${id}"
    }
}
