package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class CompanyTradeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [companyTradeInstanceList: CompanyTrade.list(params), companyTradeInstanceTotal: CompanyTrade.count()]
    }

    def create() {
        [companyTradeInstance: new CompanyTrade(params)]
    }

    def save() {
        def companyTradeInstance = new CompanyTrade(params)
        if (!companyTradeInstance.save(flush: true)) {
            render(view: "create", model: [companyTradeInstance: companyTradeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), companyTradeInstance.id])
        redirect(action: "show", id: companyTradeInstance.id)
    }

    def show(Long id) {
        def companyTradeInstance = CompanyTrade.get(id)
        if (!companyTradeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "list")
            return
        }

        [companyTradeInstance: companyTradeInstance]
    }

    def edit(Long id) {
        def companyTradeInstance = CompanyTrade.get(id)
        if (!companyTradeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "list")
            return
        }

        [companyTradeInstance: companyTradeInstance]
    }

    def update(Long id, Long version) {
        def companyTradeInstance = CompanyTrade.get(id)
        if (!companyTradeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (companyTradeInstance.version > version) {
                companyTradeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'companyTrade.label', default: 'CompanyTrade')] as Object[],
                          "Another user has updated this CompanyTrade while you were editing")
                render(view: "edit", model: [companyTradeInstance: companyTradeInstance])
                return
            }
        }

        companyTradeInstance.properties = params

        if (!companyTradeInstance.save(flush: true)) {
            render(view: "edit", model: [companyTradeInstance: companyTradeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), companyTradeInstance.id])
        redirect(action: "show", id: companyTradeInstance.id)
    }

    def delete(Long id) {
        def companyTradeInstance = CompanyTrade.get(id)
        if (!companyTradeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "list")
            return
        }

        try {
            companyTradeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'companyTrade.label', default: 'CompanyTrade'), id])
            redirect(action: "show", id: id)
        }
    }
}
