package com.inovati.insurance

class CatalogsService {

	def customerAdmService

    def getGendersList() {
    	customerAdmService.getGenders()	
    }

    def getProfessionsList() {
    	customerAdmService.getProfessions()
    }

    def getCompanyList(){
    	customerAdmService.getCompany()
    }
}
