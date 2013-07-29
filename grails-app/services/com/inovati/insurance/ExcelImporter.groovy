package com.inovati.insurance
import org.grails.plugins.excelimport.*
import org.joda.time.LocalDate
import sample.*

class ExcelImporter extends AbstractExcelImporter {

      static Map CONFIG_ADDRESS_MAP = [
              sheet:'CATALOGO DE CLIENTES', 
    			 startRow: 1,
              columnMap:  [
                      'B':'name',
                      'A':'isPayer',
                      //'E':'lastname',
                      //'F':'secondLastname',
                      //'D':'gender',
                      //'E':'profession',
                      //'I':'birthDate',	
                      //'G':'personalAddress',	
                      //'AA':'workCompanyName',
                      //'I':'workAddress',
                      //'X':'telephone1',
                      //'Y':'telephone2',
                      //'Z':'email',
                      //'M':'preferedName',  
                      //'N':'rfc', 
                      
              ]
      ]

        
    	def getExcelImportService() {
    		ExcelImportService.getService()
    	}

      public ExcelImporter(fileName) {
        super(fileName)
      }

      List<Map> getCustomer() {
        List importedList = excelImportService.columns(workbook, CONFIG_ADDRESS_MAP)
      }



    }



