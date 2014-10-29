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
//insurance companies
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
//product types
		def traditional = new ProductType(type:"tradicional").save()
		def flexible    = new ProductType(type:"flexible").save()
//products
//traditionals SMNYL life 
		def adapta = new Product(name:"Adapta").save()
		def dotal = new Product(name:"Dotal 10").save()
		def np = new Product(name:"Nuevo plenitud 55").save()
		def orvi = new Product(name:"ORVI-99").save()
		def pd55 = new Product(name:"Plenitud Diamante 55 diamante 10").save()
		def segu18 = new Product(name:"Segubeca 18 prima constante").save()
		def temp1 = new Product(name:"Temporal 1").save()
		def tnt = new Product(name:"TNT 65-15%").save()
		def group = new Product(name:"Grupo").save()
		def colectivo = new Product(name:"Colectivo").save()

		def adaptaT = new ProductsProductTypes(product:adapta,productType:traditional)
		def dotalT = new ProductsProductTypes(product:dotal,productType:traditional)
		def npT = new ProductsProductTypes(product:np,productType:traditional)
		def orviT = new ProductsProductTypes(product:orvi,productType:traditional)
		def pd55T = new ProductsProductTypes(product:pd55,productType:traditional)
		def segu18T = new ProductsProductTypes(product:segu18,productType:traditional)
		def temp1T = new ProductsProductTypes(product:temp1,productType:traditional)
		def tntT = new ProductsProductTypes(product:tnt,productType:traditional)
		def groupT = new ProductsProductTypes(product:group,productType:traditional)
		def colectivoT = new ProductsProductTypes(product:colectivo,productType:traditional)

//flexibles
		def imagina = new Product(name:"Imagina ser +").save()
		def imagina55 = new Product(name:"Imagina ser 55").save()
		def imagina60 = new Product(name:"Imagina ser 60").save()
		def ov = new Product(name:"Objetivo vida").save()
		def rc = new Product(name:"Realiza creciente").save()

		def imaginaT = new ProductsProductTypes(product:imagina,productType:flexible)
		def imagina55T = new ProductsProductTypes(product:imagina55,productType:flexible)
		def imagina60T = new ProductsProductTypes(product:imagina60,productType:flexible)
		def ovT = new ProductsProductTypes(product:ov,productType:flexible)
		def rcT = new ProductsProductTypes(product:rc,productType:flexible)

//SMNYL GMM

		def ami = new Product(name:"Alfa medical internaional").save()
		def flex = new Product(name:"Flex").save()
		def integro = new Product(name:"Integro").save()
		def pleno = new Product(name:"Pleno").save()

		def amiT = new ProductsProductTypes(product:ami,productType:traditional)
		def flexT = new ProductsProductTypes(product:flex,productType:traditional)
		def integroT = new ProductsProductTypes(product:integro,productType:traditional)
		def plenoT = new ProductsProductTypes(product:pleno,productType:traditional)

//GNP life 
		def proyecta = new Product(name:"Proyecta").save()
		def consolida = new Product(name:"Consolida").save()
		def elige = new Product(name:"Elige").save()
		def profesional = new Product(name:"Profesional").save()
		def privilegio = new Product(name:"Privilegio").save()

		def proyectaT = new ProductsProductTypes(product:proyecta,productType:traditional)
		def consolidaT = new ProductsProductTypes(product:consolida,productType:traditional)
		def eligeT = new ProductsProductTypes(product:elige,productType:traditional)
		def profesionalT = new ProductsProductTypes(product:profesional,productType:traditional)
		def privilegioT = new ProductsProductTypes(product:privilegio,productType:traditional)

//GNP GMM
		def la = new Product(name:"Linea azul VIP").save()
		def vm = new Product(name:"Vinculo Mundial").save()

		def laT = new ProductsProductTypes(product:la,productType:traditional)
		def vmT = new ProductsProductTypes(product:vm,productType:traditional)

// relationship
//smnyl
		def smnyl1 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:adaptaT)
		def smnyl2 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:dotalT)
		def smnyl3 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:npT)
		def smnyl4 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:orviT)
		def smnyl5 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:pd55T)
		def smnyl6 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:segu18T)
		def smnyl7 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:temp1T)
		def smnyl8 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:tntT)
		def smnyl9 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:groupT)
		def smnyl10 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:colectivoT)
		def smnyl11 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:imaginaT)
		def smnyl12 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:imagina55T)
		def smnyl13 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:imagina60T)
		def smnyl14 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:ovT)
		def smnyl15 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:vida,productsProductTypes:rcT)
		def smnyl16 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:gmm,productsProductTypes:amiT)
		def smnyl17 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:gmm,productsProductTypes:flexT)
		def smnyl18 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:gmm,productsProductTypes:integroT)
		def smnyl19 = new CompanyTradeProducts(insuranceCompany:smnyl,companyTrade:gmm,productsProductTypes:plenoT)
		
//GNP
		def gnp1 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:vida,productsProductTypes:proyectaT)
		def gnp2 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:vida,productsProductTypes:consolidaT)
		def gnp3 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:vida,productsProductTypes:eligeT)
		def gnp4 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:vida,productsProductTypes:profesionalT)
		def gnp5 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:vida,productsProductTypes:privilegioT)
		def gnp6 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:gmm,productsProductTypes:laT)
		def gnp7 = new CompanyTradeProducts(insuranceCompany:gnp,companyTrade:gmm,productsProductTypes:vmT)



		/*def policy = 		new Policy( basicRaw:basicRaw,
										plannedRaw:plannedRaw,
										contractor:contractor,
										payer:payer

										).save()
	*/
	}
}
