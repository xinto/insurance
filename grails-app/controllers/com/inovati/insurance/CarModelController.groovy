package com.inovati.insurance

import org.springframework.dao.DataIntegrityViolationException

class CarModelController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [carModelInstanceList: CarModel.list(params), carModelInstanceTotal: CarModel.count()]
    }

    def create() {
        [carModelInstance: new CarModel(params)]
    }

    def save() {
        def carModelInstance = new CarModel(params)
        if (!carModelInstance.save(flush: true)) {
            render(view: "create", model: [carModelInstance: carModelInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'carModel.label', default: 'CarModel'), carModelInstance.id])
        redirect(action: "show", id: carModelInstance.id)
    }

    def show(Long id) {
        def carModelInstance = CarModel.get(id)
        if (!carModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "list")
            return
        }

        [carModelInstance: carModelInstance]
    }

    def edit(Long id) {
        def carModelInstance = CarModel.get(id)
        if (!carModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "list")
            return
        }

        [carModelInstance: carModelInstance]
    }

    def update(Long id, Long version) {
        def carModelInstance = CarModel.get(id)
        if (!carModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (carModelInstance.version > version) {
                carModelInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'carModel.label', default: 'CarModel')] as Object[],
                          "Another user has updated this CarModel while you were editing")
                render(view: "edit", model: [carModelInstance: carModelInstance])
                return
            }
        }

        carModelInstance.properties = params

        if (!carModelInstance.save(flush: true)) {
            render(view: "edit", model: [carModelInstance: carModelInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'carModel.label', default: 'CarModel'), carModelInstance.id])
        redirect(action: "show", id: carModelInstance.id)
    }

    def delete(Long id) {
        def carModelInstance = CarModel.get(id)
        if (!carModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "list")
            return
        }

        try {
            carModelInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'carModel.label', default: 'CarModel'), id])
            redirect(action: "show", id: id)
        }
    }
}
