package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(ContractorController)
@Mock(Contractor)
class ContractorControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contractor/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contractorInstanceList.size() == 0
        assert model.contractorInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contractorInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contractorInstance != null
        assert view == '/contractor/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contractor/show/1'
        assert controller.flash.message != null
        assert Contractor.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contractor/list'

        populateValidParams(params)
        def contractor = new Contractor(params)

        assert contractor.save() != null

        params.id = contractor.id

        def model = controller.show()

        assert model.contractorInstance == contractor
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contractor/list'

        populateValidParams(params)
        def contractor = new Contractor(params)

        assert contractor.save() != null

        params.id = contractor.id

        def model = controller.edit()

        assert model.contractorInstance == contractor
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contractor/list'

        response.reset()

        populateValidParams(params)
        def contractor = new Contractor(params)

        assert contractor.save() != null

        // test invalid parameters in update
        params.id = contractor.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contractor/edit"
        assert model.contractorInstance != null

        contractor.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contractor/show/$contractor.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contractor.clearErrors()

        populateValidParams(params)
        params.id = contractor.id
        params.version = -1
        controller.update()

        assert view == "/contractor/edit"
        assert model.contractorInstance != null
        assert model.contractorInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contractor/list'

        response.reset()

        populateValidParams(params)
        def contractor = new Contractor(params)

        assert contractor.save() != null
        assert Contractor.count() == 1

        params.id = contractor.id

        controller.delete()

        assert Contractor.count() == 0
        assert Contractor.get(contractor.id) == null
        assert response.redirectedUrl == '/contractor/list'
    }
}
