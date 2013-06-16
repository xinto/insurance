package com.inovati.insurance

class AssuredCar {

	String plateNumber
	Integer year
	String color
	CarModel carModel
	Integer estimatedValue

    static hasMany=[policys:Policy]
    
    static constraints = {
    	plateNumber(nullable:false,blank:false)
    	estimatedValue(nullable:false,blank:false)
    }


     String toString(){
    	"${plateNumber}"
    }
}
