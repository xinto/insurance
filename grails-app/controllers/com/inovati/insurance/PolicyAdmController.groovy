package com.inovati.insurance

class PolicyAdmController {

    def customerAdmService

    def index() { }

    def lifeInsurance(){

    def payersList = customerAdmService.getPayers()
    //println "payersList: " + payersList
    [payersList:payersList]
    }

    def medicalInsurance(){

    }

    def carInsurance(){
    	
    }

    def list(){
    	
    }
}
