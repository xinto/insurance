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

    def getCompanyTradeList(){
        customerAdmService.getCompanyTrade()
    }

    def createNewGender(def params){

    	def genderInstance = new Gender(params)
        if (!genderInstance.save(flush: true)) {
            throw new RuntimeException("Error al crear nuevo Género")
        }
        genderInstance
    }

    def createNewCompany(def params){

        def companyInstance = new InsuranceCompany(params)
        if (!companyInstance.save(flush: true)) {
            throw new RuntimeException("Error al crear nueva Company")
        }
        companyInstance
    }

    def createNewCompanyTrade(def params){

        def companyTradeInstance = new CompanyTrade(params)
        if (!companyTradeInstance.save(flush: true)) {
            throw new RuntimeException("Error al crear nuevo Ramo")
        }
        companyTradeInstance
    }
}
