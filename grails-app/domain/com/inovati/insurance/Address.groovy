package com.inovati.insurance

class Address {

	String  street
	String  number
	String  colony
	Integer postalCode
	String  city
	String  state
	String  delegation

	static hasMany = [peopleWork:Person,peoplePersonal:Person,houses:AssuredHouse]
	static mappedBy = [peopleWork:"workAddress",peoplePersonal:"personalAddress"]

    static constraints = {
    }

    String toString(){
    	"${id}"
    }

    
}
