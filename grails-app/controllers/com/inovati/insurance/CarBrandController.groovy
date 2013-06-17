package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class CarBrandController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [carBrandInstanceList: CarBrand.list(params), carBrandInstanceTotal: CarBrand.count()]
    }

    def create() {
        [carBrandInstance: new CarBrand(params)]
    }

    def save() {
        def carBrandInstance = new CarBrand(params)
        if (!carBrandInstance.save(flush: true)) {
            render(view: "create", model: [carBrandInstance: carBrandInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), carBrandInstance.id])
        redirect(action: "show", id: carBrandInstance.id)
    }

    def show(Long id) {
        def carBrandInstance = CarBrand.get(id)
        if (!carBrandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "list")
            return
        }

        [carBrandInstance: carBrandInstance]
    }

    def edit(Long id) {
        def carBrandInstance = CarBrand.get(id)
        if (!carBrandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "list")
            return
        }

        [carBrandInstance: carBrandInstance]
    }

    def update(Long id, Long version) {
        def carBrandInstance = CarBrand.get(id)
        if (!carBrandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (carBrandInstance.version > version) {
                carBrandInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'carBrand.label', default: 'CarBrand')] as Object[],
                          "Another user has updated this CarBrand while you were editing")
                render(view: "edit", model: [carBrandInstance: carBrandInstance])
                return
            }
        }

        carBrandInstance.properties = params

        if (!carBrandInstance.save(flush: true)) {
            render(view: "edit", model: [carBrandInstance: carBrandInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), carBrandInstance.id])
        redirect(action: "show", id: carBrandInstance.id)
    }

    def delete(Long id) {
        def carBrandInstance = CarBrand.get(id)
        if (!carBrandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "list")
            return
        }

        try {
            carBrandInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'carBrand.label', default: 'CarBrand'), id])
            redirect(action: "show", id: id)
        }
    }
}
