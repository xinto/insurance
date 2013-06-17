package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(AssuredHouseController)
@Mock(AssuredHouse)
class AssuredHouseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/assuredHouse/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.assuredHouseInstanceList.size() == 0
        assert model.assuredHouseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.assuredHouseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.assuredHouseInstance != null
        assert view == '/assuredHouse/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/assuredHouse/show/1'
        assert controller.flash.message != null
        assert AssuredHouse.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredHouse/list'

        populateValidParams(params)
        def assuredHouse = new AssuredHouse(params)

        assert assuredHouse.save() != null

        params.id = assuredHouse.id

        def model = controller.show()

        assert model.assuredHouseInstance == assuredHouse
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredHouse/list'

        populateValidParams(params)
        def assuredHouse = new AssuredHouse(params)

        assert assuredHouse.save() != null

        params.id = assuredHouse.id

        def model = controller.edit()

        assert model.assuredHouseInstance == assuredHouse
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/assuredHouse/list'

        response.reset()

        populateValidParams(params)
        def assuredHouse = new AssuredHouse(params)

        assert assuredHouse.save() != null

        // test invalid parameters in update
        params.id = assuredHouse.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/assuredHouse/edit"
        assert model.assuredHouseInstance != null

        assuredHouse.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/assuredHouse/show/$assuredHouse.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        assuredHouse.clearErrors()

        populateValidParams(params)
        params.id = assuredHouse.id
        params.version = -1
        controller.update()

        assert view == "/assuredHouse/edit"
        assert model.assuredHouseInstance != null
        assert model.assuredHouseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/assuredHouse/list'

        response.reset()

        populateValidParams(params)
        def assuredHouse = new AssuredHouse(params)

        assert assuredHouse.save() != null
        assert AssuredHouse.count() == 1

        params.id = assuredHouse.id

        controller.delete()

        assert AssuredHouse.count() == 0
        assert AssuredHouse.get(assuredHouse.id) == null
        assert response.redirectedUrl == '/assuredHouse/list'
    }
}
