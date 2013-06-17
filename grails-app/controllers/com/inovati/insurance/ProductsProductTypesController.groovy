package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class ProductsProductTypesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [productsProductTypesInstanceList: ProductsProductTypes.list(params), productsProductTypesInstanceTotal: ProductsProductTypes.count()]
    }

    def create() {
        [productsProductTypesInstance: new ProductsProductTypes(params)]
    }

    def save() {
        def productsProductTypesInstance = new ProductsProductTypes(params)
        if (!productsProductTypesInstance.save(flush: true)) {
            render(view: "create", model: [productsProductTypesInstance: productsProductTypesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), productsProductTypesInstance.id])
        redirect(action: "show", id: productsProductTypesInstance.id)
    }

    def show(Long id) {
        def productsProductTypesInstance = ProductsProductTypes.get(id)
        if (!productsProductTypesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "list")
            return
        }

        [productsProductTypesInstance: productsProductTypesInstance]
    }

    def edit(Long id) {
        def productsProductTypesInstance = ProductsProductTypes.get(id)
        if (!productsProductTypesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "list")
            return
        }

        [productsProductTypesInstance: productsProductTypesInstance]
    }

    def update(Long id, Long version) {
        def productsProductTypesInstance = ProductsProductTypes.get(id)
        if (!productsProductTypesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (productsProductTypesInstance.version > version) {
                productsProductTypesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes')] as Object[],
                          "Another user has updated this ProductsProductTypes while you were editing")
                render(view: "edit", model: [productsProductTypesInstance: productsProductTypesInstance])
                return
            }
        }

        productsProductTypesInstance.properties = params

        if (!productsProductTypesInstance.save(flush: true)) {
            render(view: "edit", model: [productsProductTypesInstance: productsProductTypesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), productsProductTypesInstance.id])
        redirect(action: "show", id: productsProductTypesInstance.id)
    }

    def delete(Long id) {
        def productsProductTypesInstance = ProductsProductTypes.get(id)
        if (!productsProductTypesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "list")
            return
        }

        try {
            productsProductTypesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes'), id])
            redirect(action: "show", id: id)
        }
    }
}
