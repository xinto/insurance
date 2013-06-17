package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(PaymentFormController)
@Mock(PaymentForm)
class PaymentFormControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/paymentForm/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.paymentFormInstanceList.size() == 0
        assert model.paymentFormInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.paymentFormInstance != null
    }

    void testSave() {
        controller.save()

        assert model.paymentFormInstance != null
        assert view == '/paymentForm/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/paymentForm/show/1'
        assert controller.flash.message != null
        assert PaymentForm.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/paymentForm/list'

        populateValidParams(params)
        def paymentForm = new PaymentForm(params)

        assert paymentForm.save() != null

        params.id = paymentForm.id

        def model = controller.show()

        assert model.paymentFormInstance == paymentForm
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/paymentForm/list'

        populateValidParams(params)
        def paymentForm = new PaymentForm(params)

        assert paymentForm.save() != null

        params.id = paymentForm.id

        def model = controller.edit()

        assert model.paymentFormInstance == paymentForm
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/paymentForm/list'

        response.reset()

        populateValidParams(params)
        def paymentForm = new PaymentForm(params)

        assert paymentForm.save() != null

        // test invalid parameters in update
        params.id = paymentForm.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/paymentForm/edit"
        assert model.paymentFormInstance != null

        paymentForm.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/paymentForm/show/$paymentForm.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        paymentForm.clearErrors()

        populateValidParams(params)
        params.id = paymentForm.id
        params.version = -1
        controller.update()

        assert view == "/paymentForm/edit"
        assert model.paymentFormInstance != null
        assert model.paymentFormInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/paymentForm/list'

        response.reset()

        populateValidParams(params)
        def paymentForm = new PaymentForm(params)

        assert paymentForm.save() != null
        assert PaymentForm.count() == 1

        params.id = paymentForm.id

        controller.delete()

        assert PaymentForm.count() == 0
        assert PaymentForm.get(paymentForm.id) == null
        assert response.redirectedUrl == '/paymentForm/list'
    }
}
