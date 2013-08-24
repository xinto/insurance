package com.inovati.insurance

class CatalogsService {

	def customerAdmService

    def getGendersList() {
    	customerAdmService.getGenders()	
    }
}
