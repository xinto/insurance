package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class PlannedRawController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [plannedRawInstanceList: PlannedRaw.list(params), plannedRawInstanceTotal: PlannedRaw.count()]
    }

    def create() {
        [plannedRawInstance: new PlannedRaw(params)]
    }

    def save() {
        def plannedRawInstance = new PlannedRaw(params)
        if (!plannedRawInstance.save(flush: true)) {
            render(view: "create", model: [plannedRawInstance: plannedRawInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), plannedRawInstance.id])
        redirect(action: "show", id: plannedRawInstance.id)
    }

    def show(Long id) {
        def plannedRawInstance = PlannedRaw.get(id)
        if (!plannedRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "list")
            return
        }

        [plannedRawInstance: plannedRawInstance]
    }

    def edit(Long id) {
        def plannedRawInstance = PlannedRaw.get(id)
        if (!plannedRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "list")
            return
        }

        [plannedRawInstance: plannedRawInstance]
    }

    def update(Long id, Long version) {
        def plannedRawInstance = PlannedRaw.get(id)
        if (!plannedRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (plannedRawInstance.version > version) {
                plannedRawInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'plannedRaw.label', default: 'PlannedRaw')] as Object[],
                          "Another user has updated this PlannedRaw while you were editing")
                render(view: "edit", model: [plannedRawInstance: plannedRawInstance])
                return
            }
        }

        plannedRawInstance.properties = params

        if (!plannedRawInstance.save(flush: true)) {
            render(view: "edit", model: [plannedRawInstance: plannedRawInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), plannedRawInstance.id])
        redirect(action: "show", id: plannedRawInstance.id)
    }

    def delete(Long id) {
        def plannedRawInstance = PlannedRaw.get(id)
        if (!plannedRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "list")
            return
        }

        try {
            plannedRawInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw'), id])
            redirect(action: "show", id: id)
        }
    }
}
