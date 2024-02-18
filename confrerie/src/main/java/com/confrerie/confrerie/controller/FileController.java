package com.confrerie.confrerie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.confrerie.confrerie.service.FileService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class FileController {

    @Autowired
    FileService fileService;

    @PostMapping("/upload")
    public ResponseEntity<String> uploadFile(@RequestParam("file") MultipartFile file) {
        String message = "";
        fileService.init();
        fileService.save(file);
        message = "Uploaded the file successfully: " + file.getOriginalFilename();
        return ResponseEntity.ok().body(message);
    }

    @DeleteMapping("/delete/{fileName}")
    public HttpStatus deleteBiere(@PathVariable String fileName) {
        fileService.deleteFile(fileName);
        return HttpStatus.OK;
    }  
}
