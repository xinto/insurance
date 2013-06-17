package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(InsuredController)
@Mock(Insured)
class InsuredControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/insured/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.insuredInstanceList.size() == 0
        assert model.insuredInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.insuredInstance != null
    }

    void testSave() {
        controller.save()

        assert model.insuredInstance != null
        assert view == '/insured/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/insured/show/1'
        assert controller.flash.message != null
        assert Insured.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/insured/list'

        populateValidParams(params)
        def insured = new Insured(params)

        assert insured.save() != null

        params.id = insured.id

        def model = controller.show()

        assert model.insuredInstance == insured
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/insured/list'

        populateValidParams(params)
        def insured = new Insured(params)

        assert insured.save() != null

        params.id = insured.id

        def model = controller.edit()

        assert model.insuredInstance == insured
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/insured/list'

        response.reset()

        populateValidParams(params)
        def insured = new Insured(params)

        assert insured.save() != null

        // test invalid parameters in update
        params.id = insured.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/insured/edit"
        assert model.insuredInstance != null

        insured.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/insured/show/$insured.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        insured.clearErrors()

        populateValidParams(params)
        params.id = insured.id
        params.version = -1
        controller.update()

        assert view == "/insured/edit"
        assert model.insuredInstance != null
        assert model.insuredInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/insured/list'

        response.reset()

        populateValidParams(params)
        def insured = new Insured(params)

        assert insured.save() != null
        assert Insured.count() == 1

        params.id = insured.id

        controller.delete()

        assert Insured.count() == 0
        assert Insured.get(insured.id) == null
        assert response.redirectedUrl == '/insured/list'
    }
}
