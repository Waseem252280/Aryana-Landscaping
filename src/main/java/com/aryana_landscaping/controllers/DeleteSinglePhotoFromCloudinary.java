package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Photo;
import com.aryana_landscaping.Repository.PhotoRepository;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
public class DeleteSinglePhotoFromCloudinary {
    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private PhotoRepository photoRepository;

    @GetMapping("/deleteSinglePhoto/{id}")
    public String deleteSinglePhoto(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        Photo photo = photoRepository.findById(id).orElse(null);

        if (photo != null) {
            try {
                // Extract public ID from file name (without extension)
                String fileName = photo.getName(); // e.g., "garden1.jpg"
                String publicId = fileName.substring(0, fileName.lastIndexOf(".")); // e.g., "garden1"

                // Delete from Cloudinary
                Map result = cloudinary.uploader().destroy("manageablePhotos/" + publicId, ObjectUtils.emptyMap());

                // Check if deleted successfully
                if ("ok".equals(result.get("result"))) {
                    // Delete from DB
                    photoRepository.delete(photo);
                    redirectAttributes.addFlashAttribute("success", "Image deleted from Cloudinary and database.");
                } else {
                    redirectAttributes.addFlashAttribute("error", "Failed to delete image from Cloudinary!");
                }
            } catch (Exception e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("error", "Error while deleting the image: " + e.getMessage());
            }
        } else {
            redirectAttributes.addFlashAttribute("error", "Photo not found!");
        }

        return "redirect:/deletePhotos";
    }


}
