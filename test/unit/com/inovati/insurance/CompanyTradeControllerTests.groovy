package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(CompanyTradeController)
@Mock(CompanyTrade)
class CompanyTradeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/companyTrade/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.companyTradeInstanceList.size() == 0
        assert model.companyTradeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.companyTradeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.companyTradeInstance != null
        assert view == '/companyTrade/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/companyTrade/show/1'
        assert controller.flash.message != null
        assert CompanyTrade.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTrade/list'

        populateValidParams(params)
        def companyTrade = new CompanyTrade(params)

        assert companyTrade.save() != null

        params.id = companyTrade.id

        def model = controller.show()

        assert model.companyTradeInstance == companyTrade
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTrade/list'

        populateValidParams(params)
        def companyTrade = new CompanyTrade(params)

        assert companyTrade.save() != null

        params.id = companyTrade.id

        def model = controller.edit()

        assert model.companyTradeInstance == companyTrade
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/companyTrade/list'

        response.reset()

        populateValidParams(params)
        def companyTrade = new CompanyTrade(params)

        assert companyTrade.save() != null

        // test invalid parameters in update
        params.id = companyTrade.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/companyTrade/edit"
        assert model.companyTradeInstance != null

        companyTrade.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/companyTrade/show/$companyTrade.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        companyTrade.clearErrors()

        populateValidParams(params)
        params.id = companyTrade.id
        params.version = -1
        controller.update()

        assert view == "/companyTrade/edit"
        assert model.companyTradeInstance != null
        assert model.companyTradeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/companyTrade/list'

        response.reset()

        populateValidParams(params)
        def companyTrade = new CompanyTrade(params)

        assert companyTrade.save() != null
        assert CompanyTrade.count() == 1

        params.id = companyTrade.id

        controller.delete()

        assert CompanyTrade.count() == 0
        assert CompanyTrade.get(companyTrade.id) == null
        assert response.redirectedUrl == '/companyTrade/list'
    }
}
