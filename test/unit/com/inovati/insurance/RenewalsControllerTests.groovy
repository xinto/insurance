package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(RenewalsController)
@Mock(Renewals)
class RenewalsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/renewals/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.renewalsInstanceList.size() == 0
        assert model.renewalsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.renewalsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.renewalsInstance != null
        assert view == '/renewals/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/renewals/show/1'
        assert controller.flash.message != null
        assert Renewals.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/renewals/list'

        populateValidParams(params)
        def renewals = new Renewals(params)

        assert renewals.save() != null

        params.id = renewals.id

        def model = controller.show()

        assert model.renewalsInstance == renewals
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/renewals/list'

        populateValidParams(params)
        def renewals = new Renewals(params)

        assert renewals.save() != null

        params.id = renewals.id

        def model = controller.edit()

        assert model.renewalsInstance == renewals
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/renewals/list'

        response.reset()

        populateValidParams(params)
        def renewals = new Renewals(params)

        assert renewals.save() != null

        // test invalid parameters in update
        params.id = renewals.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/renewals/edit"
        assert model.renewalsInstance != null

        renewals.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/renewals/show/$renewals.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        renewals.clearErrors()

        populateValidParams(params)
        params.id = renewals.id
        params.version = -1
        controller.update()

        assert view == "/renewals/edit"
        assert model.renewalsInstance != null
        assert model.renewalsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/renewals/list'

        response.reset()

        populateValidParams(params)
        def renewals = new Renewals(params)

        assert renewals.save() != null
        assert Renewals.count() == 1

        params.id = renewals.id

        controller.delete()

        assert Renewals.count() == 0
        assert Renewals.get(renewals.id) == null
        assert response.redirectedUrl == '/renewals/list'
    }
}
