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

    def addCompanyTrade(){
        println "params: " + params
        def companyTradeInstance 
        try {
            companyTradeInstance = catalogsService.createNewCompanyTrade(params)
        }
        catch(Exception e) {
            
        }
        
        redirect(action: "companyTradeList")
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

    def companyTradeList(){
        println "paramsTradeListhdjfahdkf: " 
        def companyTrade = catalogsService.getCompanyTradeList()
        [companyTradeList: companyTrade]
    }  
}
