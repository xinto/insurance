package com.inovati.insurance


class CustomerAdmController {

	def customerAdmService

    def index() { 
        try{
            def webRootDir = servletContext.getRealPath("/")
            String fileName = webRootDir + "/Muestra Master ConVida.xls"
            ExcelImporter importer = new ExcelImporter(fileName);
            
            def customerMapList = importer.getCustomer();
            println "Out"
            customerMapList.each { Map customerParams -> def newCustomer = new Person(customerParams)
               
                //newCustomer.birthDate = new Date().parse("yyyy-MM-dd",customerParams.birthDate.toString())
               String[] fullName
               fullName = customerParams.name.split(" ")
               newCustomer.lastname = fullName[0]
               newCustomer.secondLastname = fullName[1]
               newCustomer.name = fullName[2]
               //newCustomer.secondName = fullName[3]
               for(int i =3; i < fullName.length ; i++) {newCustomer.secondName = newCustomer.secondName + " "+ fullName[i]}
                newCustomer.active = true
                newCustomer.isContractor = false
                
                  if (!newCustomer.save(flush: true)) {
                    println "Done"
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
}


