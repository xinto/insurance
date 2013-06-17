package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(BeneficiaryController)
@Mock(Beneficiary)
class BeneficiaryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/beneficiary/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.beneficiaryInstanceList.size() == 0
        assert model.beneficiaryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.beneficiaryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.beneficiaryInstance != null
        assert view == '/beneficiary/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/beneficiary/show/1'
        assert controller.flash.message != null
        assert Beneficiary.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/beneficiary/list'

        populateValidParams(params)
        def beneficiary = new Beneficiary(params)

        assert beneficiary.save() != null

        params.id = beneficiary.id

        def model = controller.show()

        assert model.beneficiaryInstance == beneficiary
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/beneficiary/list'

        populateValidParams(params)
        def beneficiary = new Beneficiary(params)

        assert beneficiary.save() != null

        params.id = beneficiary.id

        def model = controller.edit()

        assert model.beneficiaryInstance == beneficiary
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/beneficiary/list'

        response.reset()

        populateValidParams(params)
        def beneficiary = new Beneficiary(params)

        assert beneficiary.save() != null

        // test invalid parameters in update
        params.id = beneficiary.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/beneficiary/edit"
        assert model.beneficiaryInstance != null

        beneficiary.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/beneficiary/show/$beneficiary.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        beneficiary.clearErrors()

        populateValidParams(params)
        params.id = beneficiary.id
        params.version = -1
        controller.update()

        assert view == "/beneficiary/edit"
        assert model.beneficiaryInstance != null
        assert model.beneficiaryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/beneficiary/list'

        response.reset()

        populateValidParams(params)
        def beneficiary = new Beneficiary(params)

        assert beneficiary.save() != null
        assert Beneficiary.count() == 1

        params.id = beneficiary.id

        controller.delete()

        assert Beneficiary.count() == 0
        assert Beneficiary.get(beneficiary.id) == null
        assert response.redirectedUrl == '/beneficiary/list'
    }
}
