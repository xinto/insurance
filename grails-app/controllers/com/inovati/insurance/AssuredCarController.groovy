package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class AssuredCarController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [assuredCarInstanceList: AssuredCar.list(params), assuredCarInstanceTotal: AssuredCar.count()]
    }

    def create() {
        [assuredCarInstance: new AssuredCar(params)]
    }

    def save() {
        def assuredCarInstance = new AssuredCar(params)
        if (!assuredCarInstance.save(flush: true)) {
            render(view: "create", model: [assuredCarInstance: assuredCarInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), assuredCarInstance.id])
        redirect(action: "show", id: assuredCarInstance.id)
    }

    def show(Long id) {
        def assuredCarInstance = AssuredCar.get(id)
        if (!assuredCarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "list")
            return
        }

        [assuredCarInstance: assuredCarInstance]
    }

    def edit(Long id) {
        def assuredCarInstance = AssuredCar.get(id)
        if (!assuredCarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "list")
            return
        }

        [assuredCarInstance: assuredCarInstance]
    }

    def update(Long id, Long version) {
        def assuredCarInstance = AssuredCar.get(id)
        if (!assuredCarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (assuredCarInstance.version > version) {
                assuredCarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'assuredCar.label', default: 'AssuredCar')] as Object[],
                          "Another user has updated this AssuredCar while you were editing")
                render(view: "edit", model: [assuredCarInstance: assuredCarInstance])
                return
            }
        }

        assuredCarInstance.properties = params

        if (!assuredCarInstance.save(flush: true)) {
            render(view: "edit", model: [assuredCarInstance: assuredCarInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), assuredCarInstance.id])
        redirect(action: "show", id: assuredCarInstance.id)
    }

    def delete(Long id) {
        def assuredCarInstance = AssuredCar.get(id)
        if (!assuredCarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "list")
            return
        }

        try {
            assuredCarInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'assuredCar.label', default: 'AssuredCar'), id])
            redirect(action: "show", id: id)
        }
    }
}
