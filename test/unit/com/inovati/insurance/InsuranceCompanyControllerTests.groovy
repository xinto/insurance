package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(InsuranceCompanyController)
@Mock(InsuranceCompany)
class InsuranceCompanyControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/insuranceCompany/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.insuranceCompanyInstanceList.size() == 0
        assert model.insuranceCompanyInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.insuranceCompanyInstance != null
    }

    void testSave() {
        controller.save()

        assert model.insuranceCompanyInstance != null
        assert view == '/insuranceCompany/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/insuranceCompany/show/1'
        assert controller.flash.message != null
        assert InsuranceCompany.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCompany/list'

        populateValidParams(params)
        def insuranceCompany = new InsuranceCompany(params)

        assert insuranceCompany.save() != null

        params.id = insuranceCompany.id

        def model = controller.show()

        assert model.insuranceCompanyInstance == insuranceCompany
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCompany/list'

        populateValidParams(params)
        def insuranceCompany = new InsuranceCompany(params)

        assert insuranceCompany.save() != null

        params.id = insuranceCompany.id

        def model = controller.edit()

        assert model.insuranceCompanyInstance == insuranceCompany
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCompany/list'

        response.reset()

        populateValidParams(params)
        def insuranceCompany = new InsuranceCompany(params)

        assert insuranceCompany.save() != null

        // test invalid parameters in update
        params.id = insuranceCompany.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/insuranceCompany/edit"
        assert model.insuranceCompanyInstance != null

        insuranceCompany.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/insuranceCompany/show/$insuranceCompany.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        insuranceCompany.clearErrors()

        populateValidParams(params)
        params.id = insuranceCompany.id
        params.version = -1
        controller.update()

        assert view == "/insuranceCompany/edit"
        assert model.insuranceCompanyInstance != null
        assert model.insuranceCompanyInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCompany/list'

        response.reset()

        populateValidParams(params)
        def insuranceCompany = new InsuranceCompany(params)

        assert insuranceCompany.save() != null
        assert InsuranceCompany.count() == 1

        params.id = insuranceCompany.id

        controller.delete()

        assert InsuranceCompany.count() == 0
        assert InsuranceCompany.get(insuranceCompany.id) == null
        assert response.redirectedUrl == '/insuranceCompany/list'
    }
}
