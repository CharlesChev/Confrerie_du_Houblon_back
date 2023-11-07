package com.confrerie.confrerie.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.stereotype.Service;

import com.confrerie.confrerie.model.Biere;
import com.confrerie.confrerie.repository.BiereRepository;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class BiereService {

    @Autowired
    private BiereRepository biereRepo;

    public Biere createBiere(Biere biere) {
        return biereRepo.save(biere);
    }

    public Biere updateBiere(Biere biere) {
        Optional < Biere > biereDb = this.biereRepo.findById(biere.getId());
        if (biereDb.isPresent()) {
            Biere biereUpdate = biereDb.get();
            biereUpdate.setId(biere.getId());
            biereUpdate.setNom(biere.getNom());
            biereUpdate.setType(biere.getType());
            biereUpdate.setPay(biere.getPay());
            biereUpdate.setBrasserie(biere.getBrasserie());
            biereUpdate.setGouteur(biere.getGouteur());
            biereUpdate.setDescription(biere.getDescription());
            biereUpdate.setPhoto(biere.getPhoto());
            biereRepo.save(biereUpdate);
            return biereUpdate;
        } else {
            throw new ResourceNotFoundException("Record not found with id : " + biere.getId());
        }
    }

    public List < Biere > getAllBiere() {
        return this.biereRepo.findAll();
    }

    public Biere getBiereById(long biereId) {
        Optional < Biere > biereDb = this.biereRepo.findById(biereId);
        if (biereDb.isPresent()) {
            return biereDb.get();
        } else {
            throw new ResourceNotFoundException("Record not found with id : " + biereId);
        }
    }

    public void deleteBiere(long biereId) {
        Optional < Biere > biereDb = this.biereRepo.findById(biereId);
        if (biereDb.isPresent()) {
            this.biereRepo.delete(biereDb.get());
        } else {
            throw new ResourceNotFoundException("Record not found with id : " + biereId);
        }
    }
}
