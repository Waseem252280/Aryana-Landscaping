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
    public String deleteSinglePhoto(@PathVariable("id") Long id,
                                    RedirectAttributes redirectAttributes) {

        Photo photo = photoRepository.findById(id).orElse(null);

        if (photo != null) {
            try {
                // Get the correct publicId saved during upload (e.g., "manageablePhotos/garden1")
                String publicId = photo.getName();

                // Call Cloudinary to delete the image
                Map result = cloudinary.uploader().destroy(publicId, ObjectUtils.asMap(
                        "resource_type", "image"
                ));

                if ("ok".equals(result.get("result"))) {
                    // Delete from the database
                    photoRepository.delete(photo);
                    redirectAttributes.addFlashAttribute("success", "Photo deleted successfully from Cloudinary and database.");
                } else {
                    redirectAttributes.addFlashAttribute("error", "Failed to delete photo from Cloudinary.");
                }

            } catch (Exception e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("error", "Error while deleting photo: " + e.getMessage());
            }
        } else {
            redirectAttributes.addFlashAttribute("error", "Photo not found.");
        }

        return "redirect:/deletePhotos";
    }
}
