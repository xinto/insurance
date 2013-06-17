package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class CompanyTradeProductsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [companyTradeProductsInstanceList: CompanyTradeProducts.list(params), companyTradeProductsInstanceTotal: CompanyTradeProducts.count()]
    }

    def create() {
        [companyTradeProductsInstance: new CompanyTradeProducts(params)]
    }

    def save() {
        def companyTradeProductsInstance = new CompanyTradeProducts(params)
        if (!companyTradeProductsInstance.save(flush: true)) {
            render(view: "create", model: [companyTradeProductsInstance: companyTradeProductsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), companyTradeProductsInstance.id])
        redirect(action: "show", id: companyTradeProductsInstance.id)
    }

    def show(Long id) {
        def companyTradeProductsInstance = CompanyTradeProducts.get(id)
        if (!companyTradeProductsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "list")
            return
        }

        [companyTradeProductsInstance: companyTradeProductsInstance]
    }

    def edit(Long id) {
        def companyTradeProductsInstance = CompanyTradeProducts.get(id)
        if (!companyTradeProductsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "list")
            return
        }

        [companyTradeProductsInstance: companyTradeProductsInstance]
    }

    def update(Long id, Long version) {
        def companyTradeProductsInstance = CompanyTradeProducts.get(id)
        if (!companyTradeProductsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (companyTradeProductsInstance.version > version) {
                companyTradeProductsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')] as Object[],
                          "Another user has updated this CompanyTradeProducts while you were editing")
                render(view: "edit", model: [companyTradeProductsInstance: companyTradeProductsInstance])
                return
            }
        }

        companyTradeProductsInstance.properties = params

        if (!companyTradeProductsInstance.save(flush: true)) {
            render(view: "edit", model: [companyTradeProductsInstance: companyTradeProductsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), companyTradeProductsInstance.id])
        redirect(action: "show", id: companyTradeProductsInstance.id)
    }

    def delete(Long id) {
        def companyTradeProductsInstance = CompanyTradeProducts.get(id)
        if (!companyTradeProductsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "list")
            return
        }

        try {
            companyTradeProductsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts'), id])
            redirect(action: "show", id: id)
        }
    }
}
