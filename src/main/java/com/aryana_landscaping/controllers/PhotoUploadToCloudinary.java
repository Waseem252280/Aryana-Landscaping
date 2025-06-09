package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Photo;
import com.aryana_landscaping.Repository.PhotoRepository;
import com.aryana_landscaping.configurations.CloudinaryConfig;
import com.cloudinary.Cloudinary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Controller
public class PhotoUploadToCloudinary {

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private PhotoRepository photoRepository;

    @PostMapping("/addPhotos")
    public String uploadMultiplePhotos(@RequestParam("photos") MultipartFile[] files, RedirectAttributes redirectAttributes) {
        List<Photo> photos = new ArrayList<>();
        boolean hasErrors = false;

        for (MultipartFile file : files) {
            if (!file.isEmpty()) {
                try {
                    // Upload to Cloudinary
                    Map uploadResult = cloudinary.uploader().upload(file.getBytes(), Map.of(
                            "resource_type", "image",
                            "folder", "landscaping_images"
                    ));

                    // Create Photo entity
                    Photo photo = new Photo();
                    photo.setName((String) uploadResult.get("public_id"));  // Store Cloudinary public_id
                    photo.setType(file.getContentType());
                    photo.setUrl((String) uploadResult.get("secure_url"));  // URL to access the image
                    photos.add(photo);

                } catch (IOException e) {
                    hasErrors = true;
                    redirectAttributes.addFlashAttribute("error", "Photos uploading failed!");
                    e.printStackTrace();
                    break;
                }
            }
        }

        if (!hasErrors) {
            photoRepository.saveAll(photos);
            redirectAttributes.addFlashAttribute("success", "Photos uploaded successfully.");
            return "redirect:/deletePhotos";
        } else {
            return "redirect:/deletePhotos";
        }
    }
}
