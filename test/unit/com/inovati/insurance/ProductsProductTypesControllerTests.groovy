package com.inovati.insurance



import org.junit.*
import grails.test.mixin.*

@TestFor(ProductsProductTypesController)
@Mock(ProductsProductTypes)
class ProductsProductTypesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/productsProductTypes/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.productsProductTypesInstanceList.size() == 0
        assert model.productsProductTypesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.productsProductTypesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.productsProductTypesInstance != null
        assert view == '/productsProductTypes/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/productsProductTypes/show/1'
        assert controller.flash.message != null
        assert ProductsProductTypes.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/productsProductTypes/list'

        populateValidParams(params)
        def productsProductTypes = new ProductsProductTypes(params)

        assert productsProductTypes.save() != null

        params.id = productsProductTypes.id

        def model = controller.show()

        assert model.productsProductTypesInstance == productsProductTypes
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/productsProductTypes/list'

        populateValidParams(params)
        def productsProductTypes = new ProductsProductTypes(params)

        assert productsProductTypes.save() != null

        params.id = productsProductTypes.id

        def model = controller.edit()

        assert model.productsProductTypesInstance == productsProductTypes
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/productsProductTypes/list'

        response.reset()

        populateValidParams(params)
        def productsProductTypes = new ProductsProductTypes(params)

        assert productsProductTypes.save() != null

        // test invalid parameters in update
        params.id = productsProductTypes.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/productsProductTypes/edit"
        assert model.productsProductTypesInstance != null

        productsProductTypes.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/productsProductTypes/show/$productsProductTypes.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        productsProductTypes.clearErrors()

        populateValidParams(params)
        params.id = productsProductTypes.id
        params.version = -1
        controller.update()

        assert view == "/productsProductTypes/edit"
        assert model.productsProductTypesInstance != null
        assert model.productsProductTypesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/productsProductTypes/list'

        response.reset()

        populateValidParams(params)
        def productsProductTypes = new ProductsProductTypes(params)

        assert productsProductTypes.save() != null
        assert ProductsProductTypes.count() == 1

        params.id = productsProductTypes.id

        controller.delete()

        assert ProductsProductTypes.count() == 0
        assert ProductsProductTypes.get(productsProductTypes.id) == null
        assert response.redirectedUrl == '/productsProductTypes/list'
    }
}
