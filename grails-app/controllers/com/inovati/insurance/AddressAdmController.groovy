package com.inovati.insurance


class AddressAdmController {

	def addressAdmService

	

    def index() { 


	 def webRootDir = servletContext.getRealPath("/")
     String fileName = webRootDir + "/address.xls"
	 AddressExcelImporter importer = new AddressExcelImporter(fileName);
	 println importer.getAddress()
	 def addressMapList = importer.getAddress();

	 addressMapList.each { Map addressParams -> def newAddress = new Address(addressParams)
	 	
		println "...."
		  if (newAddress.save(flush: true)) {
		    println "Done"
		  }
	 }

	 redirect(action:"addressList",params: params)

   } 


   def addressList(){
    	def addressList = addressAdmService.getAddressList()
    	[addressList:addressList]
    }


	}