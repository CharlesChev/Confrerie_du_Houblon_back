package com.confrerie.confrerie.service;

import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.annotation.PostConstruct;

@Service
public class FileService {

    @Value("${app.fileBasePath}")
    private String basePath;

    //private String basePath ="C:/Users/CharlesTravail/projets/confrerie_de_la_biere/front/src/assets";

    private Path root = null;

    @PostConstruct
    public void init() {
        try {
            root = Paths.get(basePath);
            Files.createDirectories(root);
        } catch (IOException e) {
            throw new RuntimeException("Could not initialize folder for upload!", e);
        }   
    }

    public void save(MultipartFile file) {
        try {
            Files.copy(file.getInputStream(), this.root.resolve(file.getOriginalFilename()));
        } catch (Exception e) {
            if (e instanceof FileAlreadyExistsException) {
                throw new RuntimeException("A file of that name already exists.");
            }

            throw new RuntimeException(e.getMessage());
        }
    }

    public void deleteFile(String fileName) {
        Path filePath = Paths.get(basePath, fileName);

        try {
            Files.delete(filePath);
        } catch (IOException e) {
            e.printStackTrace(); // 
        }
    }

}
