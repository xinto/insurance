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
        println "params: " + params
        def companyInstance 
        try {
            companyInstance = catalogsService.createNewCompany(params)
        }
        catch(Exception e) {
            
        }
        
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
