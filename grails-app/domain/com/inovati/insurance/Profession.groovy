package com.inovati.insurance

class Profession {

    String professionKey
	String remark

    static constraints = {
    	professionKey(nullable:false,blank:false)
    	remark()
    }

    static hasMany = [people:Person]

    String toString(){
    	"${id} : ${remark}"
    }
}
