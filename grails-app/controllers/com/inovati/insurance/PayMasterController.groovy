package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class PayMasterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [payMasterInstanceList: PayMaster.list(params), payMasterInstanceTotal: PayMaster.count()]
    }

    def create() {
        [payMasterInstance: new PayMaster(params)]
    }

    def save() {
        def payMasterInstance = new PayMaster(params)
        if (!payMasterInstance.save(flush: true)) {
            render(view: "create", model: [payMasterInstance: payMasterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), payMasterInstance.id])
        redirect(action: "show", id: payMasterInstance.id)
    }

    def show(Long id) {
        def payMasterInstance = PayMaster.get(id)
        if (!payMasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "list")
            return
        }

        [payMasterInstance: payMasterInstance]
    }

    def edit(Long id) {
        def payMasterInstance = PayMaster.get(id)
        if (!payMasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "list")
            return
        }

        [payMasterInstance: payMasterInstance]
    }

    def update(Long id, Long version) {
        def payMasterInstance = PayMaster.get(id)
        if (!payMasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (payMasterInstance.version > version) {
                payMasterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'payMaster.label', default: 'PayMaster')] as Object[],
                          "Another user has updated this PayMaster while you were editing")
                render(view: "edit", model: [payMasterInstance: payMasterInstance])
                return
            }
        }

        payMasterInstance.properties = params

        if (!payMasterInstance.save(flush: true)) {
            render(view: "edit", model: [payMasterInstance: payMasterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), payMasterInstance.id])
        redirect(action: "show", id: payMasterInstance.id)
    }

    def delete(Long id) {
        def payMasterInstance = PayMaster.get(id)
        if (!payMasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "list")
            return
        }

        try {
            payMasterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payMaster.label', default: 'PayMaster'), id])
            redirect(action: "show", id: id)
        }
    }
}
