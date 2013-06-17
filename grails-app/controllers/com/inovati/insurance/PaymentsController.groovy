package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class PaymentsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [paymentsInstanceList: Payments.list(params), paymentsInstanceTotal: Payments.count()]
    }

    def create() {
        [paymentsInstance: new Payments(params)]
    }

    def save() {
        def paymentsInstance = new Payments(params)
        if (!paymentsInstance.save(flush: true)) {
            render(view: "create", model: [paymentsInstance: paymentsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'payments.label', default: 'Payments'), paymentsInstance.id])
        redirect(action: "show", id: paymentsInstance.id)
    }

    def show(Long id) {
        def paymentsInstance = Payments.get(id)
        if (!paymentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "list")
            return
        }

        [paymentsInstance: paymentsInstance]
    }

    def edit(Long id) {
        def paymentsInstance = Payments.get(id)
        if (!paymentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "list")
            return
        }

        [paymentsInstance: paymentsInstance]
    }

    def update(Long id, Long version) {
        def paymentsInstance = Payments.get(id)
        if (!paymentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (paymentsInstance.version > version) {
                paymentsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'payments.label', default: 'Payments')] as Object[],
                          "Another user has updated this Payments while you were editing")
                render(view: "edit", model: [paymentsInstance: paymentsInstance])
                return
            }
        }

        paymentsInstance.properties = params

        if (!paymentsInstance.save(flush: true)) {
            render(view: "edit", model: [paymentsInstance: paymentsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'payments.label', default: 'Payments'), paymentsInstance.id])
        redirect(action: "show", id: paymentsInstance.id)
    }

    def delete(Long id) {
        def paymentsInstance = Payments.get(id)
        if (!paymentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "list")
            return
        }

        try {
            paymentsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payments.label', default: 'Payments'), id])
            redirect(action: "show", id: id)
        }
    }
}
