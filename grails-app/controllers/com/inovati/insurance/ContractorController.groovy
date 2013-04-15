package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class ContractorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contractorInstanceList: Contractor.list(params), contractorInstanceTotal: Contractor.count()]
    }

    def create() {
        [contractorInstance: new Contractor(params)]
    }

    def save() {
        def contractorInstance = new Contractor(params)
        if (!contractorInstance.save(flush: true)) {
            render(view: "create", model: [contractorInstance: contractorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'contractor.label', default: 'Contractor'), contractorInstance.id])
        redirect(action: "show", id: contractorInstance.id)
    }

    def show(Long id) {
        def contractorInstance = Contractor.get(id)
        if (!contractorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "list")
            return
        }

        [contractorInstance: contractorInstance]
    }

    def edit(Long id) {
        def contractorInstance = Contractor.get(id)
        if (!contractorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "list")
            return
        }

        [contractorInstance: contractorInstance]
    }

    def update(Long id, Long version) {
        def contractorInstance = Contractor.get(id)
        if (!contractorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contractorInstance.version > version) {
                contractorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'contractor.label', default: 'Contractor')] as Object[],
                          "Another user has updated this Contractor while you were editing")
                render(view: "edit", model: [contractorInstance: contractorInstance])
                return
            }
        }

        contractorInstance.properties = params

        if (!contractorInstance.save(flush: true)) {
            render(view: "edit", model: [contractorInstance: contractorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'contractor.label', default: 'Contractor'), contractorInstance.id])
        redirect(action: "show", id: contractorInstance.id)
    }

    def delete(Long id) {
        def contractorInstance = Contractor.get(id)
        if (!contractorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "list")
            return
        }

        try {
            contractorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contractor.label', default: 'Contractor'), id])
            redirect(action: "show", id: id)
        }
    }
}
