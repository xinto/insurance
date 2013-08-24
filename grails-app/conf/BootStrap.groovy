import com.inovati.insurance.*
import grails.util.Environment
import java.util.*
class BootStrap {

    def init = { servletContext ->
    	switch (Environment.current) {
			case Environment.DEVELOPMENT:
				createAdminUserIfRequired()
			break
			case Environment.PRODUCTION:
				println "No special configuration required"
			break
		}
    }

    def destroy = {
    }

    void createAdminUserIfRequired() {
    	def paymentMethod1 = new PaymentMethod(name:"Tarjeta de Credito").save()
    	def paymentMethod2 = new PaymentMethod(name:"Tarjeta de Debito").save()
    	def paymentMethod3 = new PaymentMethod(name:"Efectivo").save()
    	def currency = new Currency(name: "Udis",
    							         description:"Moneda utilizada en el sector de seguros de vida").save()
    	def paymentForm = new PaymentForm(name:"Mensual").save()
		def basicRaw = 		new BasicRaw(paymentConduit: "C.A. CREDITO",
										 accountNumber: 1234,
										 securityCode: 123,
										 bank : "Banamex",
										 expiration: new Date(),
										 currency: currency,
										 paymentForm: paymentForm,
										 firstReceipt: 122.49,
										 subsecuentReceipt: 122.49,
										 annualizedRaw: 1469.84,
										 comissionRaw: 26.94).save()
		def plannedRaw =	new PlannedRaw().save()
		def contractorGender=new Gender(genderKey:"MUJER",remark:"Femenino").save()
		def male = new Gender(genderKey:"HOMBRE",remark:"Masculino").save()
		def profession =	new Profession(professionKey:"LAE",
										remark:"Licenciado en Administracion de Empresas").save()
		def accounter =	new Profession(professionKey:"C",
										remark:"Contador").save()
		
		def personalAddress=new Address(street:"Cacatuas",
										number:"58",
										colony:"Lomas de las Aguilas",
										postalCode:01730,
										city:"Distrito Federal",
										state:"Edo. de Mexico",
										delegation:"").save()
		def workAddress=	new Address(street:"",
										number:"",
										colony:"",
										postalCode:01730,
										city:"Distrito Federal",
										state:"Edo. de Mexico",
										delegation:"").save()
		def contractor = 	new Person( name:"Claudia",
										lastname:"Alanis",
										secondLastname:"Bernal",
										gender: contractorGender,
										profession:profession,
										birthDate: new Date(), 
										personalAddress:personalAddress,
										workCompanyName:" Solutia Mexico, SDRL de CV",
										workAddress:workAddress,
										telephone1:"(55) 5635-7780",
										telephone2:"",
										email:" claudia.alanis@solutia.com ").save()
		def payer = 		new Person(name:"Javier",
										lastname:"Acasio",
										secondLastname:"Quiroz",
										gender: contractorGender,
										profession:profession,
										birthDate: new Date(),
										personalAddress:personalAddress,
										workAddress:workAddress,
										telephone1:"(55) 5635-7780",
										telephone2:"").save()
		/*def policy = 		new Policy( basicRaw:basicRaw,
										plannedRaw:plannedRaw,
										contractor:contractor,
										payer:payer

										).save()
	*/
	}
}
