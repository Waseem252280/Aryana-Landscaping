package com.aryana_landscaping.controllers;

import com.aryana_landscaping.model.ContactForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ContactController {

    @GetMapping("/contactus")
    public String contactus() {
        return "contactus";
    }

    @Autowired
    private JavaMailSender mailSender;

    @PostMapping("/sendMessage")
    public String sendMessage(@ModelAttribute ContactForm contactForm, Model model) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo("waseemsanjrani35@gmail.com");
            message.setSubject("Aryana Landscaping & Gardening Works and Maintenance");
            message.setText("Name: " + contactForm.getName() + "\n"
                    + "Phone: " + contactForm.getPhone() + "\n"
                    + "Email: " + contactForm.getEmail() + "\n"
                    + "Message: " + contactForm.getMessage());

            mailSender.send(message);
            return "success"; // Redirect to success page
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            return "error"; // Redirect to error page
        }
    }
}

