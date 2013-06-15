package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class GenderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [genderInstanceList: Gender.list(params), genderInstanceTotal: Gender.count()]
    }

    def create() {
        [genderInstance: new Gender(params)]
    }

    def save() {
        def genderInstance = new Gender(params)
        if (!genderInstance.save(flush: true)) {
            render(view: "create", model: [genderInstance: genderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'gender.label', default: 'Gender'), genderInstance.id])
        redirect(action: "show", id: genderInstance.id)
    }

    def show(Long id) {
        def genderInstance = Gender.get(id)
        if (!genderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "list")
            return
        }

        [genderInstance: genderInstance]
    }

    def edit(Long id) {
        def genderInstance = Gender.get(id)
        if (!genderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "list")
            return
        }

        [genderInstance: genderInstance]
    }

    def update(Long id, Long version) {
        def genderInstance = Gender.get(id)
        if (!genderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (genderInstance.version > version) {
                genderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'gender.label', default: 'Gender')] as Object[],
                          "Another user has updated this Gender while you were editing")
                render(view: "edit", model: [genderInstance: genderInstance])
                return
            }
        }

        genderInstance.properties = params

        if (!genderInstance.save(flush: true)) {
            render(view: "edit", model: [genderInstance: genderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'gender.label', default: 'Gender'), genderInstance.id])
        redirect(action: "show", id: genderInstance.id)
    }

    def delete(Long id) {
        def genderInstance = Gender.get(id)
        if (!genderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "list")
            return
        }

        try {
            genderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'gender.label', default: 'Gender'), id])
            redirect(action: "show", id: id)
        }
    }
}
