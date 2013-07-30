package com.inovati.insurance

import org.grails.plugins.excelimport.*
import org.joda.time.LocalDate
import sample.*

class PayersExcelImporter extends AbstractExcelImporter {

      static Map CONFIG_ADDRESS_MAP = [
              sheet:'MASTER', 
    			 startRow: 3,
              columnMap:  [
                      'C':'name',
                      'D':'secondName',
                      'E':'lastname',
                      'F':'secondLastname',
                      'D':'gender',
                      'E':'profession',
                      'I':'birthDate',	
                      'G':'personalAddress',	
                      'AA':'workCompanyName',
                      'I':'workAddress',
                      'X':'telephone1',
                      'Y':'telephone2',
                      'Z':'email',
                      'M':'preferedName',  
                      'N':'rfc', 
                      
              ]
      ]

        
    	def getExcelImportService() {
    		ExcelImportService.getService()
    	}

      public PayersExcelImporter(def fileName) {
        super(fileName)
      }

      List<Map> getCustomer() {
        List importedList = excelImportService.columns(workbook, CONFIG_ADDRESS_MAP)
      }



    }



