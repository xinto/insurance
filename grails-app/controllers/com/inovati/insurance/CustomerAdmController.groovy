package com.inovati.insurance


class CustomerAdmController {

	def customerAdmService

    def index() { 
        try{
            def webRootDir = servletContext.getRealPath("/")
            String fileName = webRootDir + "/Muestra Master ConVida.xls"
            ExcelImporter importer = new ExcelImporter(fileName);
            
            def customerMapList = importer.getCustomer();

            if(Person.list().size() == 2) {

            customerMapList.each { Map customerParams -> 

              //println "customerParams" + customerParams

              def name = customerParams.name
              def names = name.split("/") // split() uses regEx's, so you need to escape chars such as a "." -> "\\."

              names.each{
             //   println "customerName: " + it
                def customerName = it.trim().split(" ")
             //   println "customerName size: " + customerName.size()

                switch(customerName.size()) {
                  case 1:
                          def newCustomer = new Person([name:it,isPayer:customerParams.isPayer])
                          newCustomer.active = true
                          newCustomer.isContractor = false
                          def personalAddress = new Address()
                          if (!personalAddress.save(flush: true)) {
                              println "Error in personalAddress save"
                          }

                          newCustomer.personalAddress = personalAddress

                          def workAddress = new Address()

                          if (!workAddress.save(flush: true)) {
                              println "Error in workAddress save"
                          }

                          newCustomer.workAddress = workAddress
                          
                          if (!newCustomer.save(flush: true)) {
                            println "Error in save"
                          }
                    
                  break
                  case 2:

                          def newCustomer = new Person([name:customerName[0],lastname:customerName[1],isPayer:customerParams.isPayer])
                          newCustomer.active = true
                          newCustomer.isContractor = false

                          def personalAddress = new Address()
                          if (!personalAddress.save(flush: true)) {
                              println "Error in personalAddress save"
                          }

                          newCustomer.personalAddress = personalAddress

                          def workAddress = new Address()

                          if (!workAddress.save(flush: true)) {
                              println "Error in workAddress save"
                          }

                          newCustomer.workAddress = workAddress

                          if (!newCustomer.save(flush: true)) {
                            println "Error in save"
                          }
                    
                  break
                  case 3:
                        def newCustomer = new Person([lastname:customerName[0],secondLastname:customerName[1],name:customerName[2],isPayer:customerParams.isPayer])
                          newCustomer.active = true
                          newCustomer.isContractor = false
                          
                          def personalAddress = new Address()
                          if (!personalAddress.save(flush: true)) {
                              println "Error in personalAddress save"
                          }

                          newCustomer.personalAddress = personalAddress

                          def workAddress = new Address()

                          if (!workAddress.save(flush: true)) {
                              println "Error in workAddress save"
                          }

                          newCustomer.workAddress = workAddress
                          
                          if (!newCustomer.save(flush: true)) {
                            println "Error in save"
                          }
                    
                  break
                  case 4:

                        def newCustomer = new Person([lastname:customerName[0],secondLastname:customerName[1],name:customerName[2],secondName:customerName[3],isPayer:customerParams.isPayer])
                          newCustomer.active = true
                          newCustomer.isContractor = false
                          
                          def personalAddress = new Address()
                          if (!personalAddress.save(flush: true)) {
                              println "Error in personalAddress save"
                          }

                          newCustomer.personalAddress = personalAddress

                          def workAddress = new Address()

                          if (!workAddress.save(flush: true)) {
                              println "Error in workAddress save"
                          }

                          newCustomer.workAddress = workAddress
                          
                          if (!newCustomer.save(flush: true)) {
                            println "Error in save"
                          }
                    
                  break
                  default:

                          def newCustomer = new Person([name:it,isPayer:customerParams.isPayer])
                          newCustomer.active = true
                          newCustomer.isContractor = false
                          
                          def personalAddress = new Address()
                          if (!personalAddress.save(flush: true)) {
                              println "Error in personalAddress save"
                          }

                          newCustomer.personalAddress = personalAddress

                          def workAddress = new Address()

                          if (!workAddress.save(flush: true)) {
                              println "Error in workAddress save"
                          }

                          newCustomer.workAddress = workAddress
                          
                          if (!newCustomer.save(flush: true)) {
                            println "Error in save"
                          }
                    
                  break
                }

              }
            }
          }
         }catch(Exception e){
            println "Error" + e.message
         }

    	redirect(action:"customersList",params: params)
    }

    def addNewPayer(){

    	customerAdmService.addNewPayer(params)
    	redirect(action:"customersList")
    }

    def customersList(){
    	def payersList = customerAdmService.getPayers()
    	[payersList:payersList]
    }

    def show(long id){

       println "show: " + id
      def genders = customerAdmService.getGenders()
      def professions = customerAdmService.getProfessions()
      [customer:Person.get(id),genders:genders,professions:professions]  
    }

    def updatePayer(long id){
     // println "params: " + params
    //  def id = params.int('id')
      customerAdmService.updateCustomer(id,params)
      flash.message = message(code: 'Cliente Actualizado')
      redirect(action: "show", id:id)
    }

    def createPayer(){
      def genders = customerAdmService.getGenders()
      def professions = customerAdmService.getProfessions()
      [genders:genders,professions:professions]
    }

}


