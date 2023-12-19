package com.confrerie.confrerie;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import com.confrerie.confrerie.model.Biere;
import com.confrerie.confrerie.service.BiereService;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import static org.hamcrest.CoreMatchers.is;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.mockito.BDDMockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;



@WebMvcTest
public class BiereControllerTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private BiereService biereService;

    private Biere biere1 = new Biere("Biere Blonde", "Blonde", "Belgique", "Brasserie ABC", "John Doe", "Une bière blonde rafraîchissante", "blonde.jpg");
    private Biere biere2 = new Biere("Biere Brune", "Brune", "Allemagne", "Brasserie XYZ", "Jane Smith", "Une bière brune aux arômes de caramel", "brune.jpg");
    private Biere biere3 = new Biere("Biere Ambrée", "Ambrée", "France", "Brasserie DEF", "Alice Johnson", "Une bière ambrée avec une note fruitée", "ambree.jpg");
    private Biere biere4 = new Biere("Biere IPA", "IPA", "États-Unis", "Brasserie GHI", "Bob Williams", "Une India Pale Ale houblonnée", "ipa.jpg");


    @Test
    public void givenListOfBiere_whenGetAllBiere_thenReturnBiereList() throws Exception {
        
        List<Biere> listOfBiere = new ArrayList<>();
        listOfBiere.add(this.biere1);
        listOfBiere.add(this.biere2);
        listOfBiere.add(this.biere3);
        listOfBiere.add(this.biere4);
        given(biereService.getAllBiere()).willReturn(listOfBiere);

       
        ResultActions response = mockMvc.perform(get("/bieres"));

        response.andExpect(status().isOk())
                .andDo(print())
                .andExpect(jsonPath("$.size()",
                        is(listOfBiere.size())));
    }

    @Test
    public void givenBiereId_whenGetBiereById_thenReturnBiereObject() throws Exception {
        
        long biereId = 1L;
        given(biereService.getBiereById(biereId)).willReturn(biere4);

        ResultActions response = mockMvc.perform(get("/biere/{id}", biereId));

        // then - verify the output
        response.andExpect(status().isOk())
                .andDo(print())
                .andExpect(jsonPath("$.nom", is(biere4.getNom())))
                .andExpect(jsonPath("$.type", is(biere4.getType())))
                .andExpect(jsonPath("$.pay", is(biere4.getPay())))
                .andExpect(jsonPath("$.brasserie", is(biere4.getBrasserie())))
                .andExpect(jsonPath("$.gouteur", is(biere4.getGouteur())))
                .andExpect(jsonPath("$.description", is(biere4.getDescription())))
                .andExpect(jsonPath("$.photo", is(biere4.getPhoto())));
    }
}


