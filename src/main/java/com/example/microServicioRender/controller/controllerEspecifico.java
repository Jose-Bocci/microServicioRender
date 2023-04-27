package com.example.microServicioRender.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping(path = "/api")
public class controllerEspecifico {
    @GetMapping("/responde")
    public String respuesta(){
        return "Desde el controlador";
    }
}
