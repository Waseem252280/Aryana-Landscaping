package com.aryana_landscaping.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AryanaLandscaping_Controller{
                                    //home
    @GetMapping("/")
    public String home() {
        return "index"; // Resolves to /WEB-INF/views/index.jsp
    }

                                    //about us
    @GetMapping("/aboutus")
    public String aboutus() {
        return "aboutus";
    }

                                            //landscaping
    @GetMapping("/villalandscaping")
    public String villalandscaping() {
        return "villalandscaping";
    }
    @GetMapping("/residentiallandscaping")
    public String residentiallandscaping() {
        return "residentiallandscaping";
    }
    @GetMapping("/commerciallandscaping")
    public String commerciallandscaping() {
        return "commerciallandscaping";
    }
    @GetMapping("/artificialgrass")
    public String artificialgrass() {
        return "artificialgrass";
    }
    @GetMapping("/pergolaconstruction")
    public String pergolaconstruction() {
        return "pergolaconstruction";
    }
    @GetMapping("/gazeboconstruction")
    public String gazeboconstruction() {
        return "gazeboconstruction";
    }
    @GetMapping("/gardenmaintenance")
    public String gardenmaintenance() {
        return "gardenmaintenance";
    }
    @GetMapping("/gardenlandscaping")
    public String gardenlandscaping() {
        return "gardenlandscaping";
    }
    @GetMapping("/irrigationservice")
    public String irrigationservice() {
        return "irrigationservice";
    }
    @GetMapping("/pergoladesign")
    public String pergoladesign() {
        return "pergoladesign";
    }
    @GetMapping("gazebodesign")
    public String gazebodesign() {
        return "gazebodesign";
    }

    //services
    @GetMapping("/landscapingservice")
    public String landscapingservice() {
        return "landscapingservice"; // Resolves to /WEB-INF/views/index.jsp
    }
    @GetMapping("/gardeningservice")
    public String gardeningservice() {
        return "gardeningservice"; // Resolves to /WEB-INF/views/index.jsp
    }
    @GetMapping("/waterfeatures")
    public String waterfeatures() {
        return "waterfeatures";
    }
    @GetMapping("/hardlandscaping")
    public String hardlandscaping() {
        return "hardlandscaping";
    }
    @GetMapping("/softlandscaping")
    public String softlandscaping() {
        return "softlandscaping";
    }
    @GetMapping("/gazeboandpergolas")
    public String gazeboandpergolas() {
        return "gazeboandpergolas";
    }
    @GetMapping("/photogallery")
    public String photogallery(){
        return "photogallery";
    }
}


