package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(PayMasterController)
@Mock(PayMaster)
class PayMasterControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/payMaster/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.payMasterInstanceList.size() == 0
        assert model.payMasterInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.payMasterInstance != null
    }

    void testSave() {
        controller.save()

        assert model.payMasterInstance != null
        assert view == '/payMaster/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/payMaster/show/1'
        assert controller.flash.message != null
        assert PayMaster.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/payMaster/list'

        populateValidParams(params)
        def payMaster = new PayMaster(params)

        assert payMaster.save() != null

        params.id = payMaster.id

        def model = controller.show()

        assert model.payMasterInstance == payMaster
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/payMaster/list'

        populateValidParams(params)
        def payMaster = new PayMaster(params)

        assert payMaster.save() != null

        params.id = payMaster.id

        def model = controller.edit()

        assert model.payMasterInstance == payMaster
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/payMaster/list'

        response.reset()

        populateValidParams(params)
        def payMaster = new PayMaster(params)

        assert payMaster.save() != null

        // test invalid parameters in update
        params.id = payMaster.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/payMaster/edit"
        assert model.payMasterInstance != null

        payMaster.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/payMaster/show/$payMaster.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        payMaster.clearErrors()

        populateValidParams(params)
        params.id = payMaster.id
        params.version = -1
        controller.update()

        assert view == "/payMaster/edit"
        assert model.payMasterInstance != null
        assert model.payMasterInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/payMaster/list'

        response.reset()

        populateValidParams(params)
        def payMaster = new PayMaster(params)

        assert payMaster.save() != null
        assert PayMaster.count() == 1

        params.id = payMaster.id

        controller.delete()

        assert PayMaster.count() == 0
        assert PayMaster.get(payMaster.id) == null
        assert response.redirectedUrl == '/payMaster/list'
    }
}
