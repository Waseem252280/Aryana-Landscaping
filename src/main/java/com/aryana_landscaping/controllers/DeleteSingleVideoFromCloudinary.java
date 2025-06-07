package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Video;
import com.aryana_landscaping.Repository.VideoRepository;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
public class DeleteSingleVideoFromCloudinary {

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private VideoRepository videoRepository;

    @GetMapping("/deleteSingleVideo/{id}")
    public String deleteSingleVideo(@PathVariable("id") Long id,
                                    RedirectAttributes redirectAttributes) {
        Video video = videoRepository.findById(id).orElse(null);

        if (video != null) {
            try {
                // Get Cloudinary public ID (should include folder name)
                String publicId = video.getPublicId(); // e.g., manageableVideos/xyz123

                // Delete from Cloudinary (video type)
                Map result = cloudinary.uploader().destroy(publicId, ObjectUtils.asMap(
                        "resource_type", "video"
                ));

                if ("ok".equals(result.get("result"))) {
                    // Delete from DB
                    videoRepository.delete(video);
                    redirectAttributes.addFlashAttribute("success", "Video deleted successfully.");
                } else {
                    redirectAttributes.addFlashAttribute("error", "Failed to delete video from Cloudinary!");
                }

            } catch (Exception e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("error", "Error while deleting the video: " + e.getMessage());
            }

        } else {
            redirectAttributes.addFlashAttribute("error", "Video not found!");
        }

        return "redirect:/deleteVideos";
    }


}
