package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class PolicyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [policyInstanceList: Policy.list(params), policyInstanceTotal: Policy.count()]
    }

    def create() {
        [policyInstance: new Policy(params)]
    }

    def save() {
        def policyInstance = new Policy(params)
        if (!policyInstance.save(flush: true)) {
            render(view: "create", model: [policyInstance: policyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'policy.label', default: 'Policy'), policyInstance.id])
        redirect(action: "show", id: policyInstance.id)
    }

    def show(Long id) {
        def policyInstance = Policy.get(id)
        if (!policyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "list")
            return
        }

        [policyInstance: policyInstance]
    }

    def edit(Long id) {
        def policyInstance = Policy.get(id)
        if (!policyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "list")
            return
        }

        [policyInstance: policyInstance]
    }

    def update(Long id, Long version) {
        def policyInstance = Policy.get(id)
        if (!policyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (policyInstance.version > version) {
                policyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'policy.label', default: 'Policy')] as Object[],
                          "Another user has updated this Policy while you were editing")
                render(view: "edit", model: [policyInstance: policyInstance])
                return
            }
        }

        policyInstance.properties = params

        if (!policyInstance.save(flush: true)) {
            render(view: "edit", model: [policyInstance: policyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'policy.label', default: 'Policy'), policyInstance.id])
        redirect(action: "show", id: policyInstance.id)
    }

    def delete(Long id) {
        def policyInstance = Policy.get(id)
        if (!policyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "list")
            return
        }

        try {
            policyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'policy.label', default: 'Policy'), id])
            redirect(action: "show", id: id)
        }
    }
}
