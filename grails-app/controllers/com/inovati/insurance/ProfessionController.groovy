package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class ProfessionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [professionInstanceList: Profession.list(params), professionInstanceTotal: Profession.count()]
    }

    def create() {
        [professionInstance: new Profession(params)]
    }

    def save() {
        def professionInstance = new Profession(params)
        if (!professionInstance.save(flush: true)) {
            render(view: "create", model: [professionInstance: professionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'profession.label', default: 'Profession'), professionInstance.id])
        redirect(action: "show", id: professionInstance.id)
    }

    def show(Long id) {
        def professionInstance = Profession.get(id)
        if (!professionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "list")
            return
        }

        [professionInstance: professionInstance]
    }

    def edit(Long id) {
        def professionInstance = Profession.get(id)
        if (!professionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "list")
            return
        }

        [professionInstance: professionInstance]
    }

    def update(Long id, Long version) {
        def professionInstance = Profession.get(id)
        if (!professionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (professionInstance.version > version) {
                professionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'profession.label', default: 'Profession')] as Object[],
                          "Another user has updated this Profession while you were editing")
                render(view: "edit", model: [professionInstance: professionInstance])
                return
            }
        }

        professionInstance.properties = params

        if (!professionInstance.save(flush: true)) {
            render(view: "edit", model: [professionInstance: professionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'profession.label', default: 'Profession'), professionInstance.id])
        redirect(action: "show", id: professionInstance.id)
    }

    def delete(Long id) {
        def professionInstance = Profession.get(id)
        if (!professionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "list")
            return
        }

        try {
            professionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'profession.label', default: 'Profession'), id])
            redirect(action: "show", id: id)
        }
    }
}
