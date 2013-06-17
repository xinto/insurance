package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class InsuredController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [insuredInstanceList: Insured.list(params), insuredInstanceTotal: Insured.count()]
    }

    def create() {
        [insuredInstance: new Insured(params)]
    }

    def save() {
        def insuredInstance = new Insured(params)
        if (!insuredInstance.save(flush: true)) {
            render(view: "create", model: [insuredInstance: insuredInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'insured.label', default: 'Insured'), insuredInstance.id])
        redirect(action: "show", id: insuredInstance.id)
    }

    def show(Long id) {
        def insuredInstance = Insured.get(id)
        if (!insuredInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "list")
            return
        }

        [insuredInstance: insuredInstance]
    }

    def edit(Long id) {
        def insuredInstance = Insured.get(id)
        if (!insuredInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "list")
            return
        }

        [insuredInstance: insuredInstance]
    }

    def update(Long id, Long version) {
        def insuredInstance = Insured.get(id)
        if (!insuredInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (insuredInstance.version > version) {
                insuredInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'insured.label', default: 'Insured')] as Object[],
                          "Another user has updated this Insured while you were editing")
                render(view: "edit", model: [insuredInstance: insuredInstance])
                return
            }
        }

        insuredInstance.properties = params

        if (!insuredInstance.save(flush: true)) {
            render(view: "edit", model: [insuredInstance: insuredInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'insured.label', default: 'Insured'), insuredInstance.id])
        redirect(action: "show", id: insuredInstance.id)
    }

    def delete(Long id) {
        def insuredInstance = Insured.get(id)
        if (!insuredInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "list")
            return
        }

        try {
            insuredInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'insured.label', default: 'Insured'), id])
            redirect(action: "show", id: id)
        }
    }
}
