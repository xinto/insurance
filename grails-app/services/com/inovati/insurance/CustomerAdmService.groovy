package com.inovati.insurance

class CustomerAdmService {

    def serviceMethod() {

    }

    def addNewPayer(def params){
        println "params" + params

    	def person = new Person(params)
        person.active  = true
        person.birthDate = params.birthdate == "" ? new Date() : new Date().parse("dd/M/yyyy",params.birthdate)

        def personalAddress = new Address()
        personalAddress.street = params.personalStreet
        personalAddress.colony = params.personalSettlement
        personalAddress.postalCode = params.int('personalZipcode')
        personalAddress.city = params.personalCity
        personalAddress.state = params.personalState
        personalAddress.delegation = params.personalDelegation

        if (!personalAddress.save(flush: true)) {
            throw new RuntimeException("Error al crear personalAddress")
        }

        person.personalAddress = personalAddress

        def workAddress = new Address()

        workAddress.street = params.workStreet
        workAddress.colony = params.workSettlement
        workAddress.postalCode = params.int('workZipcode')
        workAddress.city = params.workCity
        workAddress.state = params.workState
        workAddress.delegation = params.workDelegation

        if (!workAddress.save(flush: true)) {
            throw new RuntimeException("Error al crear workAddress")
        }

        person.workAddress = workAddress

        if (!person.save(flush: true)) {
            throw new RuntimeException("Error al crear person")
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

    def getCompanyTrade(){
        CompanyTrade.list()
    }

}
