package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Video;
import com.aryana_landscaping.Repository.VideoRepository;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.Map;

@Controller
public class AddVideosToCoudinary {

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private VideoRepository videoRepository;

    @PostMapping("/addVideos")
    public String addVideos(@RequestParam("videos") MultipartFile[] videos,
                            RedirectAttributes redirectAttributes) {
        if (videos.length == 0) {
            redirectAttributes.addFlashAttribute("error", "Please select at least one video to upload.");
            return "redirect:/addVideos";
        }

        for (MultipartFile video : videos) {
            if (!video.isEmpty()) {
                try {
                    // Upload to Cloudinary with resource_type = video
                    Map uploadResult = cloudinary.uploader().upload(video.getBytes(), ObjectUtils.asMap(
                            "resource_type", "video",
                            "folder", "videos"
                    ));

                    // Save info to DB
                    String publicId = (String) uploadResult.get("public_id"); // manageableVideos/xyz123
                    String originalFilename = video.getOriginalFilename();
                    String format = (String) uploadResult.get("format");

                    Video newVideo = new Video();
                    newVideo.setName(originalFilename); // You can also store public_id if needed
                    newVideo.setType(format);           // e.g., mp4
                    newVideo.setPublicId(publicId);     // Save public ID for deletion
                    videoRepository.save(newVideo);
                } catch (IOException e) {
                    e.printStackTrace();
                    redirectAttributes.addFlashAttribute("error", "Failed to upload video: " + video.getOriginalFilename());
                    return "redirect:/addVideos";
                }
            }
        }

        redirectAttributes.addFlashAttribute("success", "Videos uploaded successfully!");
        return "redirect:/addVideos";
    }


}
