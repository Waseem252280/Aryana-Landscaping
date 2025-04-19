package com.aryana_landscaping.controllers;

import com.aryana_landscaping.Entity.User;
import com.aryana_landscaping.Repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/loginAuth")
    public String login(@RequestParam("userName") String userName,
                        @RequestParam("email") String email,
                        @RequestParam("password") String password,
                        HttpSession session,
                        RedirectAttributes redirectAttributes) {
        // Attempt to find the user by email
        User existingUser = userRepository.findByEmail(email);

        if (existingUser != null) {
            // Check if the provided password matches either the currentPassword or key
            if (password.equals(existingUser.getCurrentPassword()) || password.equals(existingUser.getKey())) {
                // Set user data to session
                session.setAttribute("user", existingUser);
                return "redirect:/admin"; // Redirect to a protected page after successful login
            } else {
                redirectAttributes.addFlashAttribute("error", "Invalid password or key.");
            }
        } else {
            redirectAttributes.addFlashAttribute("error", "Email and password did not match!");
        }
        return "redirect:/login"; // Redirect back to login page if authentication fails
    }
}
