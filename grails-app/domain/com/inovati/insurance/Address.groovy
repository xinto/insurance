package com.inovati.insurance

class Address {

	String  street
	String  number
	String  colony
	Integer postalCode
	String  city
	String  state
	String  delegation

	static hasMany = [peopleWork:Person,peoplePersonal:Person,
	                  houses:AssuredHouse]
	                  
	static mappedBy = [peopleWork:"workAddress",peoplePersonal:"personalAddress"]

    static constraints = {
    	street(nullable:true,blank:true)
	    number(nullable:true,blank:true)
	    colony(nullable:true,blank:true)
	    postalCode(nullable:true,blank:true)
	    city(nullable:true,blank:true)
	    state(nullable:true,blank:true)
	    delegation(nullable:true,blank:true)
    }

    String toString(){
    	"${id}"
    }

    
}
