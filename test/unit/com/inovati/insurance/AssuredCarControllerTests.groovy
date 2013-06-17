package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(AssuredCarController)
@Mock(AssuredCar)
class AssuredCarControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/assuredCar/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.assuredCarInstanceList.size() == 0
        assert model.assuredCarInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.assuredCarInstance != null
    }

    void testSave() {
        controller.save()

        assert model.assuredCarInstance != null
        assert view == '/assuredCar/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/assuredCar/show/1'
        assert controller.flash.message != null
        assert AssuredCar.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredCar/list'

        populateValidParams(params)
        def assuredCar = new AssuredCar(params)

        assert assuredCar.save() != null

        params.id = assuredCar.id

        def model = controller.show()

        assert model.assuredCarInstance == assuredCar
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredCar/list'

        populateValidParams(params)
        def assuredCar = new AssuredCar(params)

        assert assuredCar.save() != null

        params.id = assuredCar.id

        def model = controller.edit()

        assert model.assuredCarInstance == assuredCar
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredCar/list'

        response.reset()

        populateValidParams(params)
        def assuredCar = new AssuredCar(params)

        assert assuredCar.save() != null

        // test invalid parameters in update
        params.id = assuredCar.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/assuredCar/edit"
        assert model.assuredCarInstance != null

        assuredCar.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/assuredCar/show/$assuredCar.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        assuredCar.clearErrors()

        populateValidParams(params)
        params.id = assuredCar.id
        params.version = -1
        controller.update()

        assert view == "/assuredCar/edit"
        assert model.assuredCarInstance != null
        assert model.assuredCarInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/assuredCar/list'

        response.reset()

        populateValidParams(params)
        def assuredCar = new AssuredCar(params)

        assert assuredCar.save() != null
        assert AssuredCar.count() == 1

        params.id = assuredCar.id

        controller.delete()

        assert AssuredCar.count() == 0
        assert AssuredCar.get(assuredCar.id) == null
        assert response.redirectedUrl == '/assuredCar/list'
    }
}
