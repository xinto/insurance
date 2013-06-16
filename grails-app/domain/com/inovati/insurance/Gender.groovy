package com.inovati.insurance

class Gender {

	String genderKey
	String remark
    

    static constraints = {
    	genderKey(nullable:false,blank:false)
    	remark()
    }

    static hasMany = [people:Person]

    String toString(){
    	"${id} : ${genderKey}"
    }
}
