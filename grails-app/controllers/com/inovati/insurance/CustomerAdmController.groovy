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

              def newCustomer = new Person(customerParams)
                newCustomer.active = true
                newCustomer.isContractor = false
                
                  if (!newCustomer.save(flush: true)) {
                    println "Error in save"
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
    	
    }

    def customersList(){
    	def payersList = customerAdmService.getPayers()
    	[payersList:payersList]
    }

     def show(){
       
        
    }

    def createPayer(){
      def genders = customerAdmService.getGenders()
      [genders:genders]
    }   
}


