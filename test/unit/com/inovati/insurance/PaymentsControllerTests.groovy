package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(PaymentsController)
@Mock(Payments)
class PaymentsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/payments/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.paymentsInstanceList.size() == 0
        assert model.paymentsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.paymentsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.paymentsInstance != null
        assert view == '/payments/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/payments/show/1'
        assert controller.flash.message != null
        assert Payments.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/payments/list'

        populateValidParams(params)
        def payments = new Payments(params)

        assert payments.save() != null

        params.id = payments.id

        def model = controller.show()

        assert model.paymentsInstance == payments
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/payments/list'

        populateValidParams(params)
        def payments = new Payments(params)

        assert payments.save() != null

        params.id = payments.id

        def model = controller.edit()

        assert model.paymentsInstance == payments
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/payments/list'

        response.reset()

        populateValidParams(params)
        def payments = new Payments(params)

        assert payments.save() != null

        // test invalid parameters in update
        params.id = payments.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/payments/edit"
        assert model.paymentsInstance != null

        payments.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/payments/show/$payments.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        payments.clearErrors()

        populateValidParams(params)
        params.id = payments.id
        params.version = -1
        controller.update()

        assert view == "/payments/edit"
        assert model.paymentsInstance != null
        assert model.paymentsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/payments/list'

        response.reset()

        populateValidParams(params)
        def payments = new Payments(params)

        assert payments.save() != null
        assert Payments.count() == 1

        params.id = payments.id

        controller.delete()

        assert Payments.count() == 0
        assert Payments.get(payments.id) == null
        assert response.redirectedUrl == '/payments/list'
    }
}
