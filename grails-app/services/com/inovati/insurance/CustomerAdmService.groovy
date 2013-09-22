package com.inovati.insurance

class CustomerAdmService {

    def serviceMethod() {

    }

    def addNewPayer(def params){
    	def person = new Person()
    	
    }

    def getPayers() {
    	def payersList = Person.findAll("from Person as p where p.isPayer != null order by p.id") 
    	payersList
    }

    def getGenders(){
        Gender.list()
    }

    def getProfessions(){
        Profession.list()
    }

    def getCompany(){
        InsuranceCompany.list()
    }

}
