package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class BasicRawController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [basicRawInstanceList: BasicRaw.list(params), basicRawInstanceTotal: BasicRaw.count()]
    }

    def create() {
        [basicRawInstance: new BasicRaw(params)]
    }

    def save() {
        def basicRawInstance = new BasicRaw(params)
        if (!basicRawInstance.save(flush: true)) {
            render(view: "create", model: [basicRawInstance: basicRawInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), basicRawInstance.id])
        redirect(action: "show", id: basicRawInstance.id)
    }

    def show(Long id) {
        def basicRawInstance = BasicRaw.get(id)
        if (!basicRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "list")
            return
        }

        [basicRawInstance: basicRawInstance]
    }

    def edit(Long id) {
        def basicRawInstance = BasicRaw.get(id)
        if (!basicRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "list")
            return
        }

        [basicRawInstance: basicRawInstance]
    }

    def update(Long id, Long version) {
        def basicRawInstance = BasicRaw.get(id)
        if (!basicRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (basicRawInstance.version > version) {
                basicRawInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'basicRaw.label', default: 'BasicRaw')] as Object[],
                          "Another user has updated this BasicRaw while you were editing")
                render(view: "edit", model: [basicRawInstance: basicRawInstance])
                return
            }
        }

        basicRawInstance.properties = params

        if (!basicRawInstance.save(flush: true)) {
            render(view: "edit", model: [basicRawInstance: basicRawInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), basicRawInstance.id])
        redirect(action: "show", id: basicRawInstance.id)
    }

    def delete(Long id) {
        def basicRawInstance = BasicRaw.get(id)
        if (!basicRawInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "list")
            return
        }

        try {
            basicRawInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'basicRaw.label', default: 'BasicRaw'), id])
            redirect(action: "show", id: id)
        }
    }
}
