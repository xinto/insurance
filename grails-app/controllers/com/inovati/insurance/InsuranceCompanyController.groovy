package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class InsuranceCompanyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [insuranceCompanyInstanceList: InsuranceCompany.list(params), insuranceCompanyInstanceTotal: InsuranceCompany.count()]
    }

    def create() {
        [insuranceCompanyInstance: new InsuranceCompany(params)]
    }

    def save() {
        def insuranceCompanyInstance = new InsuranceCompany(params)
        if (!insuranceCompanyInstance.save(flush: true)) {
            render(view: "create", model: [insuranceCompanyInstance: insuranceCompanyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), insuranceCompanyInstance.id])
        redirect(action: "show", id: insuranceCompanyInstance.id)
    }

    def show(Long id) {
        def insuranceCompanyInstance = InsuranceCompany.get(id)
        if (!insuranceCompanyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "list")
            return
        }

        [insuranceCompanyInstance: insuranceCompanyInstance]
    }

    def edit(Long id) {
        def insuranceCompanyInstance = InsuranceCompany.get(id)
        if (!insuranceCompanyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "list")
            return
        }

        [insuranceCompanyInstance: insuranceCompanyInstance]
    }

    def update(Long id, Long version) {
        def insuranceCompanyInstance = InsuranceCompany.get(id)
        if (!insuranceCompanyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (insuranceCompanyInstance.version > version) {
                insuranceCompanyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'insuranceCompany.label', default: 'InsuranceCompany')] as Object[],
                          "Another user has updated this InsuranceCompany while you were editing")
                render(view: "edit", model: [insuranceCompanyInstance: insuranceCompanyInstance])
                return
            }
        }

        insuranceCompanyInstance.properties = params

        if (!insuranceCompanyInstance.save(flush: true)) {
            render(view: "edit", model: [insuranceCompanyInstance: insuranceCompanyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), insuranceCompanyInstance.id])
        redirect(action: "show", id: insuranceCompanyInstance.id)
    }

    def delete(Long id) {
        def insuranceCompanyInstance = InsuranceCompany.get(id)
        if (!insuranceCompanyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "list")
            return
        }

        try {
            insuranceCompanyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'insuranceCompany.label', default: 'InsuranceCompany'), id])
            redirect(action: "show", id: id)
        }
    }
}
