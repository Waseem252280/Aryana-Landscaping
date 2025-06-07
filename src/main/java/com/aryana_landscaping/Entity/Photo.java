package com.aryana_landscaping.Entity;


import javax.persistence.*;

@Entity
public class Photo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String type;

    @Transient
    private String url; // This will not be saved in DB

    // Getters and setters
    public String getUrl() {
        return "https://res.cloudinary.com/dqr2rknbm/image/upload/" + this.name + "."+type;

    }

    public void setUrl(String url) {
        this.url = url;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
