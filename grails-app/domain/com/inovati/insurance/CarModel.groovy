package com.inovati.insurance

class CarModel {

	CarBrand carBrand
	String name

	static hasMany=[assuredCars:AssuredCar]
    
    static constraints = {
    	name(nullable:false,blank:false)
    }

     String toString(){
    	"${name}"
    }
}
