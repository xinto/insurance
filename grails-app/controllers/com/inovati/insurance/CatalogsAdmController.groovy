package com.inovati.insurance

class CatalogsAdmController {

	def catalogsService

    def index() { 
    	
    }

    def gendersList(){
    	def genders = catalogsService.getGendersList()
    	[gendersList:genders]
    }

    def professionsList(){

    }
}
