package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.Photo;
import com.aryana_landscaping.Entity.User;
import com.aryana_landscaping.Entity.Video;
import com.aryana_landscaping.Repository.PhotoRepository;
import com.aryana_landscaping.Repository.UserRepository;
import com.aryana_landscaping.Repository.VideoRepository;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private PhotoRepository photoRepository;
    @Autowired
    private VideoRepository videoRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private Cloudinary cloudinary;

    private static final String photoPath =Paths.get("src/main/resources/static/images/manageablePhotos").toAbsolutePath().toString();
    private static final String videoDirectory =Paths.get("src/main/resources/static/videos").toAbsolutePath().toString();
    private static final String profileDirectory=Paths.get("src/main/resources/static/images/profile").toAbsolutePath().toString();

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    //add photos
//    @PostMapping("/addPhotos")
//    public String uploadMultiplePhotos(@RequestParam("photos") MultipartFile[] files, RedirectAttributes redirectAttributes) {
//        List<Photo> photos = new ArrayList<>();
//        boolean hasErrors = false;
//
//        for (MultipartFile file : files) {
//            if (!file.isEmpty()) {
//                try {
//                    // Save metadata in database
//                    Photo photo = new Photo();
//                    photo.setName(file.getOriginalFilename());
//                    photo.setType(file.getContentType());
//                    photos.add(photo);
//
//                    // Save file to static directory
//                    Files.copy(file.getInputStream(), Paths.get(photoPath, file.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
//                } catch (IOException e) {
//                    hasErrors = true;
//                    redirectAttributes.addFlashAttribute("error", "Photos uploading failed!");
//                    e.printStackTrace();
//                    break;
//                }
//            }
//        }
//
//        if (!hasErrors) {
//            photoRepository.saveAll(photos);
//            redirectAttributes.addFlashAttribute("success", "Photos uploaded successfully.");
//            return "redirect:/deletePhotos";
//        } else {
//            return "redirect:/deletePhotos";
//        }
//    }

    //deletePhotos
    @GetMapping("/deletePhotos")
    public String deletePhotos(Model model) {
        List<Photo> photoList = photoRepository.findAllByOrderByIdDesc(); // Assuming method to fetch in descending order
        model.addAttribute("photoList", photoList);
        return "deletePhotos";
    }

    //deleteSinglePhoto
//    @GetMapping("/deleteSinglePhoto/{id}")
//    public String deleteSinglePhoto(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
//        Photo photo = photoRepository.findById(id).orElse(null);
//        if (photo != null) {
//            // Delete the photo entity from the database
//            photoRepository.delete(photo);
//
//            // Construct the path to the image file
//            Path imagePath = Paths.get(photoPath, photo.getName());
//
//            // Delete the image file if it exists
//            try {
//                File file = imagePath.toFile();
//                if (file.exists()) {
//                    Files.delete(imagePath);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                System.out.println(e.getMessage());
//            }
//
//            redirectAttributes.addFlashAttribute("success", "Image file deleted successfully.");
//        } else {
//            redirectAttributes.addFlashAttribute("error", "Photo not found!");
//        }
//        return "redirect:/deletePhotos";
//    }

    //deleteVideos
    @GetMapping("/deleteVideos")
    public String deleteVideos(Model model) {
        List<Video> videosList = videoRepository.findAllByOrderByIdDesc(); // Assuming method to fetch in descending order
        model.addAttribute("videosList", videosList);
        return "deleteVideos";
    }

//    //add Videos
//    @PostMapping("/addVideos")
//    public String uploadMultipleVideos(@RequestParam("videos") MultipartFile[] files, RedirectAttributes redirectAttributes) {
//        List<Video> videos = new ArrayList<>();
//        boolean hasErrors = false;
//
//        for (MultipartFile file : files) {
//            if (!file.isEmpty()) {
//                try {
//                    // Save metadata in database
//                    Video video = new Video();
//                    video.setName(file.getOriginalFilename());
//                    video.setType(file.getContentType());
//                    videos.add(video);
//
//                    // Save file to static directory
//                    Files.copy(file.getInputStream(), Paths.get(videoDirectory, file.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
//                } catch (IOException e) {
//                    hasErrors = true;
//                    redirectAttributes.addFlashAttribute("error", "Videos uploading failed!");
//                    e.printStackTrace();
//                    break;
//                }
//            }
//        }
//
//        if (!hasErrors) {
//            videoRepository.saveAll(videos);
//            redirectAttributes.addFlashAttribute("success", "Videos uploaded successfully.");
//            return "redirect:/deleteVideos";
//        } else {
//            return "redirect:/deleteVideos";
//        }
//    }

    //deleteSingleVideo
//    @GetMapping("/deleteSingleVideo/{id}")
//    public String deleteSingleVideo(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
//        Video video = videoRepository.findById(id).orElse(null);
//        if (video != null) {
//            // Delete the photo entity from the database
//            videoRepository.delete(video);
//
//            // Construct the path to the image file
//            Path videoPath = Paths.get(videoDirectory, video.getName());
//
//            // Delete the image file if it exists
//            try {
//                File file = videoPath.toFile();
//                if (file.exists()) {
//                    Files.delete(videoPath);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                System.out.println(e.getMessage());
//            }
//
//            redirectAttributes.addFlashAttribute("success", "Video file deleted successfully.");
//        } else {
//            redirectAttributes.addFlashAttribute("error", "Video not found!");
//        }
//        return "redirect:/deleteVideos";
//    }

    //updateSettings
//    @Transactional
//    @PostMapping("/updateSettings")
//    public String updateSettings(@RequestParam(name = "userId") Long userId,
//                                 @RequestParam(name = "userName", required = false) String userName,
//                                 @RequestParam(name = "currentPassword", required = false) String currentPassword,
//                                 @RequestParam(name = "newPassword", required = false) String newPassword,
//                                 @RequestParam(name = "profile", required = false) MultipartFile profile,
//                                 RedirectAttributes redirectAttributes,
//                                 HttpSession session,
//                                 HttpServletRequest request) {
//
//        User existingUser = userRepository.findById(userId).orElse(null);
//        if (existingUser == null) {
//            redirectAttributes.addFlashAttribute("error", "User not found!");
//            return "redirect:/admin";
//        }
//
//        boolean isChangingProfileOrUsername =
//                (userName != null && !userName.isEmpty()) ||
//                        (profile != null && !profile.isEmpty());
//
//        boolean isChangingPassword = (newPassword != null && !newPassword.isEmpty());
//
//        // Rule: Current password must be provided if changing username, profile, or password
//        if ((isChangingProfileOrUsername || isChangingPassword) &&
//                (currentPassword == null || !existingUser.getCurrentPassword().equals(currentPassword))) {
//            redirectAttributes.addFlashAttribute("error", "Current password is required or incorrect!");
//            return "redirect:/admin";
//        }
//
//        // Update username
//        if (userName != null && !userName.isEmpty()) {
//            existingUser.setUserName(userName);
//        }
//
//        // Update profile
//        if (profile != null && !profile.isEmpty()) {
//            try {
//                String previousProfile = existingUser.getProfile();
//                if (previousProfile != null && !previousProfile.isEmpty()) {
//                    Files.deleteIfExists(Paths.get(profileDirectory, previousProfile));
//                }
//                Files.copy(profile.getInputStream(),
//                        Paths.get(profileDirectory, profile.getOriginalFilename()),
//                        StandardCopyOption.REPLACE_EXISTING);
//                existingUser.setProfile(profile.getOriginalFilename());
//            } catch (IOException e) {
//                redirectAttributes.addFlashAttribute("error", "Failed to update profile picture!");
//                e.printStackTrace();
//                return "redirect:/admin";
//            }
//        }
//
//        // Update password
//        if (isChangingPassword) {
//            existingUser.setCurrentPassword(newPassword);
//        }
//
//        userRepository.save(existingUser);
//
//        // Refresh session
//        session.invalidate();
//        session = request.getSession(true);
//        session.setAttribute("user", existingUser);
//
//        redirectAttributes.addFlashAttribute("success", "Settings updated successfully.");
//        return "redirect:/admin";
//    }



    //cloudinary based update profile
    @Transactional
    @PostMapping("/updateSettings")
    public String updateSettings(@RequestParam(name = "userId") Long userId,
                                 @RequestParam(name = "userName", required = false) String userName,
                                 @RequestParam(name = "currentPassword", required = false) String currentPassword,
                                 @RequestParam(name = "newPassword", required = false) String newPassword,
                                 @RequestParam(name = "profile", required = false) MultipartFile profile,
                                 RedirectAttributes redirectAttributes,
                                 HttpSession session,
                                 HttpServletRequest request) {

        User existingUser = userRepository.findById(userId).orElse(null);
        if (existingUser == null) {
            redirectAttributes.addFlashAttribute("error", "User not found!");
            return "redirect:/admin";
        }

        boolean isChangingProfileOrUsername =
                (userName != null && !userName.isEmpty()) ||
                        (profile != null && !profile.isEmpty());

        boolean isChangingPassword = (newPassword != null && !newPassword.isEmpty());

        if ((isChangingProfileOrUsername || isChangingPassword) &&
                (currentPassword == null || !existingUser.getCurrentPassword().equals(currentPassword))) {
            redirectAttributes.addFlashAttribute("error", "Current password is required or incorrect!");
            return "redirect:/admin";
        }

        if (userName != null && !userName.isEmpty()) {
            existingUser.setUserName(userName);
        }

        if (profile != null && !profile.isEmpty()) {
            try {
                // Delete existing image from Cloudinary
                String previousPublicId = existingUser.getProfilePublicId();
                if (previousPublicId != null && !previousPublicId.isEmpty()) {
                    cloudinary.uploader().destroy(previousPublicId, ObjectUtils.emptyMap());
                }

// Upload to Cloudinary with resource_type = video
                Map uploadResult = cloudinary.uploader().upload(profile.getBytes(), ObjectUtils.asMap(
                        "resource_type", "image",
                        "folder", "profile"
                ));
                String publicId = (String) uploadResult.get("public_id");
                String url = (String) uploadResult.get("secure_url");
                String format = (String) uploadResult.get("format");
                String originalFilename = profile.getOriginalFilename();

                existingUser.setProfile(url);
                existingUser.setProfilePublicId(publicId);
                existingUser.setProfileType("image/" + format);
                existingUser.setProfileName(originalFilename);

            } catch (IOException e) {
                redirectAttributes.addFlashAttribute("error", "Failed to update profile picture!");
                e.printStackTrace();
                return "redirect:/admin";
            }
        }

        if (isChangingPassword) {
            existingUser.setCurrentPassword(newPassword);
        }

        userRepository.save(existingUser);

        session.invalidate();
        session = request.getSession(true);
        session.setAttribute("user", existingUser);

        redirectAttributes.addFlashAttribute("success", "Settings updated successfully.");
        return "redirect:/admin";
    }

    @GetMapping("/logout")
    public String invalidateSession(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}