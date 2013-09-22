package com.inovati.insurance

class CatalogsAdmController {

	def catalogsService

    def index() { 
    	
    }

    def addGender(){
        println "params: " + params
    }

    def gendersList(){
    	def genders = catalogsService.getGendersList()
    	[gendersList:genders]
    }

    def professionsList(){
        def professions = catalogsService.getProfessionsList()
        [professionsList:professions]
    }

    def companyList(){
        def company = catalogsService.getCompanyList()
        [companyList: company]
    }
}
