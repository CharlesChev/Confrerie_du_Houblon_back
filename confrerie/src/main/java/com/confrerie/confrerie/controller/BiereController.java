package com.confrerie.confrerie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.confrerie.confrerie.model.Biere;
import com.confrerie.confrerie.service.BiereService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class BiereController {

    @Autowired
    private BiereService biereService;

    @GetMapping("/bieres")
    public ResponseEntity < List < Biere >> getAllBiere() {
        return ResponseEntity.ok().body(biereService.getAllBiere());
    }

    @GetMapping("/biere/{id}")
    public ResponseEntity < Biere > getBiereById(@PathVariable long id) {
        return ResponseEntity.ok().body(biereService.getBiereById(id));
    }

    @PostMapping("/biere")
    public ResponseEntity < Biere > createBiere(@RequestBody Biere biere) {
        return ResponseEntity.ok().body(this.biereService.createBiere(biere));
    }

    @PutMapping("/bieres/{id}")
    public ResponseEntity < Biere > updateBiere(@PathVariable long id, @RequestBody Biere biere) {
        biere.setId(id);
        return ResponseEntity.ok().body(this.biereService.updateBiere(biere));
    }

    @DeleteMapping("/bieres/{id}")
    public HttpStatus deleteBiere(@PathVariable long id) {
        this.biereService.deleteBiere(id);
        return HttpStatus.OK;
    }

    
    
}
