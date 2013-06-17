package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(PlannedRawController)
@Mock(PlannedRaw)
class PlannedRawControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/plannedRaw/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.plannedRawInstanceList.size() == 0
        assert model.plannedRawInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.plannedRawInstance != null
    }

    void testSave() {
        controller.save()

        assert model.plannedRawInstance != null
        assert view == '/plannedRaw/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/plannedRaw/show/1'
        assert controller.flash.message != null
        assert PlannedRaw.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/plannedRaw/list'

        populateValidParams(params)
        def plannedRaw = new PlannedRaw(params)

        assert plannedRaw.save() != null

        params.id = plannedRaw.id

        def model = controller.show()

        assert model.plannedRawInstance == plannedRaw
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/plannedRaw/list'

        populateValidParams(params)
        def plannedRaw = new PlannedRaw(params)

        assert plannedRaw.save() != null

        params.id = plannedRaw.id

        def model = controller.edit()

        assert model.plannedRawInstance == plannedRaw
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/plannedRaw/list'

        response.reset()

        populateValidParams(params)
        def plannedRaw = new PlannedRaw(params)

        assert plannedRaw.save() != null

        // test invalid parameters in update
        params.id = plannedRaw.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/plannedRaw/edit"
        assert model.plannedRawInstance != null

        plannedRaw.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/plannedRaw/show/$plannedRaw.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        plannedRaw.clearErrors()

        populateValidParams(params)
        params.id = plannedRaw.id
        params.version = -1
        controller.update()

        assert view == "/plannedRaw/edit"
        assert model.plannedRawInstance != null
        assert model.plannedRawInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/plannedRaw/list'

        response.reset()

        populateValidParams(params)
        def plannedRaw = new PlannedRaw(params)

        assert plannedRaw.save() != null
        assert PlannedRaw.count() == 1

        params.id = plannedRaw.id

        controller.delete()

        assert PlannedRaw.count() == 0
        assert PlannedRaw.get(plannedRaw.id) == null
        assert response.redirectedUrl == '/plannedRaw/list'
    }
}
