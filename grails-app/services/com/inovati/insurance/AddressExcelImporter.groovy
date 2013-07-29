package com.inovati.insurance
import org.grails.plugins.excelimport.*
import org.joda.time.LocalDate
import sample.*

class AddressExcelImporter extends AbstractExcelImporter {

     
      def
      static Map CONFIG_ADDRESS_MAP = [
              sheet:'Hoja1', 
    			 startRow: 1,
              columnMap:  [
                      'A':'street',
                      'B':'number',
                      'C':'colony',
                      'D':'postalCode',
                      'E':'city',
                      'F':'state',	
                      'G':'delegation',	
              ]
      ]

        
    	def getExcelImportService() {
    		ExcelImportService.getService()
    	}

      public AddressExcelImporter(fileName) {
        super(fileName)
      }

      List<Map> getAddress() {
        List addressList = excelImportService.columns(workbook, CONFIG_ADDRESS_MAP)
      }



    }



