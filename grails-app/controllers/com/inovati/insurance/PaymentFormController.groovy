package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class PaymentFormController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [paymentFormInstanceList: PaymentForm.list(params), paymentFormInstanceTotal: PaymentForm.count()]
    }

    def create() {
        [paymentFormInstance: new PaymentForm(params)]
    }

    def save() {
        def paymentFormInstance = new PaymentForm(params)
        if (!paymentFormInstance.save(flush: true)) {
            render(view: "create", model: [paymentFormInstance: paymentFormInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), paymentFormInstance.id])
        redirect(action: "show", id: paymentFormInstance.id)
    }

    def show(Long id) {
        def paymentFormInstance = PaymentForm.get(id)
        if (!paymentFormInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "list")
            return
        }

        [paymentFormInstance: paymentFormInstance]
    }

    def edit(Long id) {
        def paymentFormInstance = PaymentForm.get(id)
        if (!paymentFormInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "list")
            return
        }

        [paymentFormInstance: paymentFormInstance]
    }

    def update(Long id, Long version) {
        def paymentFormInstance = PaymentForm.get(id)
        if (!paymentFormInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (paymentFormInstance.version > version) {
                paymentFormInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paymentForm.label', default: 'PaymentForm')] as Object[],
                          "Another user has updated this PaymentForm while you were editing")
                render(view: "edit", model: [paymentFormInstance: paymentFormInstance])
                return
            }
        }

        paymentFormInstance.properties = params

        if (!paymentFormInstance.save(flush: true)) {
            render(view: "edit", model: [paymentFormInstance: paymentFormInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), paymentFormInstance.id])
        redirect(action: "show", id: paymentFormInstance.id)
    }

    def delete(Long id) {
        def paymentFormInstance = PaymentForm.get(id)
        if (!paymentFormInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "list")
            return
        }

        try {
            paymentFormInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paymentForm.label', default: 'PaymentForm'), id])
            redirect(action: "show", id: id)
        }
    }
}
