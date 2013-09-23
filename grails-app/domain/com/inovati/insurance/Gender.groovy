package com.inovati.insurance

class Gender {

	String genderKey
	String remark
    

    static constraints = {
    	genderKey(nullable:false,blank:false)
    	remark(nullable:true,blank:true)
    }

    static hasMany = [people:Person]

    String toString(){
    	"${id} : ${genderKey}"
    }
}
