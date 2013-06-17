package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(BasicRawController)
@Mock(BasicRaw)
class BasicRawControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/basicRaw/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.basicRawInstanceList.size() == 0
        assert model.basicRawInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.basicRawInstance != null
    }

    void testSave() {
        controller.save()

        assert model.basicRawInstance != null
        assert view == '/basicRaw/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/basicRaw/show/1'
        assert controller.flash.message != null
        assert BasicRaw.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/basicRaw/list'

        populateValidParams(params)
        def basicRaw = new BasicRaw(params)

        assert basicRaw.save() != null

        params.id = basicRaw.id

        def model = controller.show()

        assert model.basicRawInstance == basicRaw
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/basicRaw/list'

        populateValidParams(params)
        def basicRaw = new BasicRaw(params)

        assert basicRaw.save() != null

        params.id = basicRaw.id

        def model = controller.edit()

        assert model.basicRawInstance == basicRaw
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/basicRaw/list'

        response.reset()

        populateValidParams(params)
        def basicRaw = new BasicRaw(params)

        assert basicRaw.save() != null

        // test invalid parameters in update
        params.id = basicRaw.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/basicRaw/edit"
        assert model.basicRawInstance != null

        basicRaw.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/basicRaw/show/$basicRaw.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        basicRaw.clearErrors()

        populateValidParams(params)
        params.id = basicRaw.id
        params.version = -1
        controller.update()

        assert view == "/basicRaw/edit"
        assert model.basicRawInstance != null
        assert model.basicRawInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/basicRaw/list'

        response.reset()

        populateValidParams(params)
        def basicRaw = new BasicRaw(params)

        assert basicRaw.save() != null
        assert BasicRaw.count() == 1

        params.id = basicRaw.id

        controller.delete()

        assert BasicRaw.count() == 0
        assert BasicRaw.get(basicRaw.id) == null
        assert response.redirectedUrl == '/basicRaw/list'
    }
}
