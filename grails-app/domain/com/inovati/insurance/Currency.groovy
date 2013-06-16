package com.inovati.insurance

class Currency {

	String name
	String description

	static hasMany = [basicRaws:BasicRaw]

    static constraints = {
    	name(nullable:false,blank:false)
    }

    String toString(){
    	"${id}"
    }
}
