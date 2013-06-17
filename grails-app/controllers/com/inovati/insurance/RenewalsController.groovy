package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class RenewalsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [renewalsInstanceList: Renewals.list(params), renewalsInstanceTotal: Renewals.count()]
    }

    def create() {
        [renewalsInstance: new Renewals(params)]
    }

    def save() {
        def renewalsInstance = new Renewals(params)
        if (!renewalsInstance.save(flush: true)) {
            render(view: "create", model: [renewalsInstance: renewalsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'renewals.label', default: 'Renewals'), renewalsInstance.id])
        redirect(action: "show", id: renewalsInstance.id)
    }

    def show(Long id) {
        def renewalsInstance = Renewals.get(id)
        if (!renewalsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "list")
            return
        }

        [renewalsInstance: renewalsInstance]
    }

    def edit(Long id) {
        def renewalsInstance = Renewals.get(id)
        if (!renewalsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "list")
            return
        }

        [renewalsInstance: renewalsInstance]
    }

    def update(Long id, Long version) {
        def renewalsInstance = Renewals.get(id)
        if (!renewalsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (renewalsInstance.version > version) {
                renewalsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'renewals.label', default: 'Renewals')] as Object[],
                          "Another user has updated this Renewals while you were editing")
                render(view: "edit", model: [renewalsInstance: renewalsInstance])
                return
            }
        }

        renewalsInstance.properties = params

        if (!renewalsInstance.save(flush: true)) {
            render(view: "edit", model: [renewalsInstance: renewalsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'renewals.label', default: 'Renewals'), renewalsInstance.id])
        redirect(action: "show", id: renewalsInstance.id)
    }

    def delete(Long id) {
        def renewalsInstance = Renewals.get(id)
        if (!renewalsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "list")
            return
        }

        try {
            renewalsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'renewals.label', default: 'Renewals'), id])
            redirect(action: "show", id: id)
        }
    }
}
