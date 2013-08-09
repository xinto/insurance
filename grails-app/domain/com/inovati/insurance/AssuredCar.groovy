package com.inovati.insurance

class AssuredCar {

	String   plateNumber
	Integer  year
	String   color
	CarModel carModel
	Double   estimatedValue

    static hasMany=[policies:Policy]
    
    static constraints = {
    	plateNumber(nullable:false,blank:false)
    	estimatedValue(nullable:false,blank:false)
    }


     String toString(){
    	"${plateNumber}"
    }
}
