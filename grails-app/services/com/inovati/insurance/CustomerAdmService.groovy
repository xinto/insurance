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

    def updateCustomer(long id, def params){
        def personInstance = Person.get(id)
        if (!personInstance) {
            return
        }
        personInstance.properties = params

        personInstance.birthDate = params.birthdate == "" ? new Date() : new Date().parse("dd/M/yyyy",params.birthdate)

        personInstance.personalAddress.street = params.personalStreet
        personInstance.personalAddress.colony = params.personalSettlement
        personInstance.personalAddress.postalCode = params.int('personalZipcode')
        personInstance.personalAddress.city = params.personalCity
        personInstance.personalAddress.state = params.personalState
        personInstance.personalAddress.delegation = params.personalDelegation

        personInstance.workAddress.street = params.workStreet
        personInstance.workAddress.colony = params.workSettlement
        personInstance.workAddress.postalCode = params.int('workZipcode')
        personInstance.workAddress.city = params.workCity
        personInstance.workAddress.state = params.workState
        personInstance.workAddress.delegation = params.workDelegation

        if (!personInstance.save(flush: true)) {
            throw new RuntimeException("Error al crear person")
        }
        personInstance
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
