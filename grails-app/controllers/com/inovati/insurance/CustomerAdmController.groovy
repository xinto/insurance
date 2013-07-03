package com.inovati.insurance

class CustomerAdmController {

	def customerAdmService

    def index() { 
    	redirect(action:"customersList",params: params)
    }

    def addNewPayer(){

    	customerAdmService.addNewPayer(params)
    	
    }

    def customersList(){
    	def payersList = customerAdmService.getPayers()
    	[payersList:payersList]
    }

     def show(){
       
        
    }
}


