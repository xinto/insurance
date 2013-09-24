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

		def smnyl = 		new InsuranceCompany(name:"SMNYL",
										description:"S",
										active:true).save()
		def  gnp= 			new InsuranceCompany(name:"GNP",
										description:"GNP",
										active:true).save()
		def mapfre = 		new InsuranceCompany(name:"MAPFRE TEPEYAC",
										description:"MAPFRE TEPEYAC",
										active:true).save()
        def qualitas = 		new InsuranceCompany(name:"QUALITAS",
										description:"QUALITAS",
										active:true).save()
    	def aig = 			new InsuranceCompany(name:"AIG",
										description:"AIG",
										active:true).save()
		def ace = 			new InsuranceCompany(name:"ACE",
										description:"ACE",
										active:true).save()
		def metlife = 		new InsuranceCompany(name:"METLIFE",
										description:"METLIFE",
										active:true).save()
		def axa = 			new InsuranceCompany(name:"AXA",
										description:"AXA",
										active:true).save()
		def amedex = 		new InsuranceCompany(name:"AMEDEX",
										description:"AMEDEX",
										active:true).save()
		def vida =			new CompanyTrade(name:"VIDA",
										active:true).save()
		def gmm =			new CompanyTrade(name:"GMM",
										active:true).save()
		def acc =			new CompanyTrade(name:"ACC. PERSONALES",
										active:true).save()
		def autos =			new CompanyTrade(name:"AUTOS",
										active:true).save()
		def hogar =			new CompanyTrade(name:"HOGAR",
										active:true).save()
		def empresarial =	new CompanyTrade(name:"EMPRESARIAL",
										active:true).save()
		def civil =			new CompanyTrade(name:"RESPONSABILIDAD CIVIL",
										active:true).save()
		/*def policy = 		new Policy( basicRaw:basicRaw,
										plannedRaw:plannedRaw,
										contractor:contractor,
										payer:payer

										).save()
	*/
	}
}
