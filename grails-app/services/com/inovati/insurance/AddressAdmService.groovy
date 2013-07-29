package com.inovati.insurance

//import org.grails.plugins.excelimport.ExcelImportUtils


class AddressAdmService {

    



         def getAddressList() {
          def addressList = Address.list() //("from Address as a order by a.id") 
          addressList
        }
 }
