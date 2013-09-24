package com.inovati.insurance

class CustomerAdmService {

    def serviceMethod() {

    }

    def addNewPayer(def params){
        println "params" + params

    	def person = new Person(params)
        person.active  = true
        person.birthDate = new Date().parse("dd/M/yyyy",params.birthdate)
        if (!person.save(flush: true)) {
            throw new RuntimeException("Error al crear un nuevo cliente")
        }
        person
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
