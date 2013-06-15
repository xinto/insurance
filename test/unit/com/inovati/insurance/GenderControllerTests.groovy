package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(GenderController)
@Mock(Gender)
class GenderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/gender/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.genderInstanceList.size() == 0
        assert model.genderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.genderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.genderInstance != null
        assert view == '/gender/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/gender/show/1'
        assert controller.flash.message != null
        assert Gender.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/gender/list'

        populateValidParams(params)
        def gender = new Gender(params)

        assert gender.save() != null

        params.id = gender.id

        def model = controller.show()

        assert model.genderInstance == gender
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/gender/list'

        populateValidParams(params)
        def gender = new Gender(params)

        assert gender.save() != null

        params.id = gender.id

        def model = controller.edit()

        assert model.genderInstance == gender
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/gender/list'

        response.reset()

        populateValidParams(params)
        def gender = new Gender(params)

        assert gender.save() != null

        // test invalid parameters in update
        params.id = gender.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/gender/edit"
        assert model.genderInstance != null

        gender.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/gender/show/$gender.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        gender.clearErrors()

        populateValidParams(params)
        params.id = gender.id
        params.version = -1
        controller.update()

        assert view == "/gender/edit"
        assert model.genderInstance != null
        assert model.genderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/gender/list'

        response.reset()

        populateValidParams(params)
        def gender = new Gender(params)

        assert gender.save() != null
        assert Gender.count() == 1

        params.id = gender.id

        controller.delete()

        assert Gender.count() == 0
        assert Gender.get(gender.id) == null
        assert response.redirectedUrl == '/gender/list'
    }
}
