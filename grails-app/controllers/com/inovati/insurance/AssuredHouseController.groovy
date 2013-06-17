package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class AssuredHouseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [assuredHouseInstanceList: AssuredHouse.list(params), assuredHouseInstanceTotal: AssuredHouse.count()]
    }

    def create() {
        [assuredHouseInstance: new AssuredHouse(params)]
    }

    def save() {
        def assuredHouseInstance = new AssuredHouse(params)
        if (!assuredHouseInstance.save(flush: true)) {
            render(view: "create", model: [assuredHouseInstance: assuredHouseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), assuredHouseInstance.id])
        redirect(action: "show", id: assuredHouseInstance.id)
    }

    def show(Long id) {
        def assuredHouseInstance = AssuredHouse.get(id)
        if (!assuredHouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "list")
            return
        }

        [assuredHouseInstance: assuredHouseInstance]
    }

    def edit(Long id) {
        def assuredHouseInstance = AssuredHouse.get(id)
        if (!assuredHouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "list")
            return
        }

        [assuredHouseInstance: assuredHouseInstance]
    }

    def update(Long id, Long version) {
        def assuredHouseInstance = AssuredHouse.get(id)
        if (!assuredHouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (assuredHouseInstance.version > version) {
                assuredHouseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'assuredHouse.label', default: 'AssuredHouse')] as Object[],
                          "Another user has updated this AssuredHouse while you were editing")
                render(view: "edit", model: [assuredHouseInstance: assuredHouseInstance])
                return
            }
        }

        assuredHouseInstance.properties = params

        if (!assuredHouseInstance.save(flush: true)) {
            render(view: "edit", model: [assuredHouseInstance: assuredHouseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), assuredHouseInstance.id])
        redirect(action: "show", id: assuredHouseInstance.id)
    }

    def delete(Long id) {
        def assuredHouseInstance = AssuredHouse.get(id)
        if (!assuredHouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "list")
            return
        }

        try {
            assuredHouseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse'), id])
            redirect(action: "show", id: id)
        }
    }
}
