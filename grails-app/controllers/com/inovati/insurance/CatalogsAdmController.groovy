package com.inovati.insurance

class CatalogsAdmController {

	def catalogsService

    def index() { 
    	
    }

    def addGender(){
        
        println "params: " + params
        def genderInstance 
        try {
            genderInstance = catalogsService.createNewGender(params)
        }
        catch(Exception e) {
            
        }
        
        redirect(action: "gendersList")
    }

    def addCompany(){
        println "it is heree company!!"
        println "params: " + params
        redirect(action: "companyList")
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
