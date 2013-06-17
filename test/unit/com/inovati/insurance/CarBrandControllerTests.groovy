package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(CarBrandController)
@Mock(CarBrand)
class CarBrandControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/carBrand/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.carBrandInstanceList.size() == 0
        assert model.carBrandInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.carBrandInstance != null
    }

    void testSave() {
        controller.save()

        assert model.carBrandInstance != null
        assert view == '/carBrand/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/carBrand/show/1'
        assert controller.flash.message != null
        assert CarBrand.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/carBrand/list'

        populateValidParams(params)
        def carBrand = new CarBrand(params)

        assert carBrand.save() != null

        params.id = carBrand.id

        def model = controller.show()

        assert model.carBrandInstance == carBrand
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/carBrand/list'

        populateValidParams(params)
        def carBrand = new CarBrand(params)

        assert carBrand.save() != null

        params.id = carBrand.id

        def model = controller.edit()

        assert model.carBrandInstance == carBrand
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/carBrand/list'

        response.reset()

        populateValidParams(params)
        def carBrand = new CarBrand(params)

        assert carBrand.save() != null

        // test invalid parameters in update
        params.id = carBrand.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/carBrand/edit"
        assert model.carBrandInstance != null

        carBrand.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/carBrand/show/$carBrand.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        carBrand.clearErrors()

        populateValidParams(params)
        params.id = carBrand.id
        params.version = -1
        controller.update()

        assert view == "/carBrand/edit"
        assert model.carBrandInstance != null
        assert model.carBrandInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/carBrand/list'

        response.reset()

        populateValidParams(params)
        def carBrand = new CarBrand(params)

        assert carBrand.save() != null
        assert CarBrand.count() == 1

        params.id = carBrand.id

        controller.delete()

        assert CarBrand.count() == 0
        assert CarBrand.get(carBrand.id) == null
        assert response.redirectedUrl == '/carBrand/list'
    }
}
