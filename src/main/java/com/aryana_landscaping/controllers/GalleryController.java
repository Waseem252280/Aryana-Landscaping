package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Photo;
import com.aryana_landscaping.Entity.Video;
import com.aryana_landscaping.Repository.PhotoRepository;
import com.aryana_landscaping.Repository.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class GalleryController {
    @Autowired
    private PhotoRepository photoRepository;
    @Autowired
    private VideoRepository videoRepository;

    @GetMapping("/photos")
    public String photos(Model model) {
        List<Photo> photoList = photoRepository.findAllByOrderByIdDesc(); // Assuming method to fetch in descending order
        model.addAttribute("photoList", photoList);
        return "photos";
    }

    @GetMapping("/videos")
    public String videos(Model model) {
        List<Video> videoList = videoRepository.findAllByOrderByIdDesc(); // Assuming method to fetch in descending order
        model.addAttribute("videosList", videoList);
        return "videos";
    }
}