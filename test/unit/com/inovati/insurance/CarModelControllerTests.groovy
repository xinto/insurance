package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(CarModelController)
@Mock(CarModel)
class CarModelControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/carModel/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.carModelInstanceList.size() == 0
        assert model.carModelInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.carModelInstance != null
    }

    void testSave() {
        controller.save()

        assert model.carModelInstance != null
        assert view == '/carModel/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/carModel/show/1'
        assert controller.flash.message != null
        assert CarModel.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/carModel/list'

        populateValidParams(params)
        def carModel = new CarModel(params)

        assert carModel.save() != null

        params.id = carModel.id

        def model = controller.show()

        assert model.carModelInstance == carModel
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/carModel/list'

        populateValidParams(params)
        def carModel = new CarModel(params)

        assert carModel.save() != null

        params.id = carModel.id

        def model = controller.edit()

        assert model.carModelInstance == carModel
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/carModel/list'

        response.reset()

        populateValidParams(params)
        def carModel = new CarModel(params)

        assert carModel.save() != null

        // test invalid parameters in update
        params.id = carModel.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/carModel/edit"
        assert model.carModelInstance != null

        carModel.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/carModel/show/$carModel.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        carModel.clearErrors()

        populateValidParams(params)
        params.id = carModel.id
        params.version = -1
        controller.update()

        assert view == "/carModel/edit"
        assert model.carModelInstance != null
        assert model.carModelInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/carModel/list'

        response.reset()

        populateValidParams(params)
        def carModel = new CarModel(params)

        assert carModel.save() != null
        assert CarModel.count() == 1

        params.id = carModel.id

        controller.delete()

        assert CarModel.count() == 0
        assert CarModel.get(carModel.id) == null
        assert response.redirectedUrl == '/carModel/list'
    }
}
