package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(CompanyTradeProductsController)
@Mock(CompanyTradeProducts)
class CompanyTradeProductsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/companyTradeProducts/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.companyTradeProductsInstanceList.size() == 0
        assert model.companyTradeProductsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.companyTradeProductsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.companyTradeProductsInstance != null
        assert view == '/companyTradeProducts/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/companyTradeProducts/show/1'
        assert controller.flash.message != null
        assert CompanyTradeProducts.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTradeProducts/list'

        populateValidParams(params)
        def companyTradeProducts = new CompanyTradeProducts(params)

        assert companyTradeProducts.save() != null

        params.id = companyTradeProducts.id

        def model = controller.show()

        assert model.companyTradeProductsInstance == companyTradeProducts
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTradeProducts/list'

        populateValidParams(params)
        def companyTradeProducts = new CompanyTradeProducts(params)

        assert companyTradeProducts.save() != null

        params.id = companyTradeProducts.id

        def model = controller.edit()

        assert model.companyTradeProductsInstance == companyTradeProducts
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTradeProducts/list'

        response.reset()

        populateValidParams(params)
        def companyTradeProducts = new CompanyTradeProducts(params)

        assert companyTradeProducts.save() != null

        // test invalid parameters in update
        params.id = companyTradeProducts.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/companyTradeProducts/edit"
        assert model.companyTradeProductsInstance != null

        companyTradeProducts.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/companyTradeProducts/show/$companyTradeProducts.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        companyTradeProducts.clearErrors()

        populateValidParams(params)
        params.id = companyTradeProducts.id
        params.version = -1
        controller.update()

        assert view == "/companyTradeProducts/edit"
        assert model.companyTradeProductsInstance != null
        assert model.companyTradeProductsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/companyTradeProducts/list'

        response.reset()

        populateValidParams(params)
        def companyTradeProducts = new CompanyTradeProducts(params)

        assert companyTradeProducts.save() != null
        assert CompanyTradeProducts.count() == 1

        params.id = companyTradeProducts.id

        controller.delete()

        assert CompanyTradeProducts.count() == 0
        assert CompanyTradeProducts.get(companyTradeProducts.id) == null
        assert response.redirectedUrl == '/companyTradeProducts/list'
    }
}
