//package com.aryana_landscaping.Entity;
//
//import javax.persistence.*;
//
//@Entity
//public class User {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//    @Column(name = "userName", nullable = false)
//    private String userName;
//    @Column(name = "currentPassword")
//    private String currentPassword;
//    @Column(name = "email")
//    private String email;
//    @Column(name = "userkey")
//    private String key;
//    @Column(name = "profile")
//    private String profile;
//
//    public User(){}
//    public User(String userName,String email, String currentPassword, String key, String profile) {
//        this.userName = userName;
//        this.currentPassword = currentPassword;
//        this.key = key;
//        this.profile = profile;
//        this.email = email;
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getUserName() {
//        return userName;
//    }
//
//    public void setUserName(String userName) {
//        this.userName = userName;
//    }
//
//    public String getCurrentPassword() {
//        return currentPassword;
//    }
//
//    public void setCurrentPassword(String currentPassword) {
//        this.currentPassword = currentPassword;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getKey() {
//        return key;
//    }
//
//    public void setKey(String key) {
//        this.key = key;
//    }
//
//    public String getProfile() {
//        return profile;
//    }
//
//    public void setProfile(String profile) {
//        this.profile = profile;
//    }
//}





//cloudinary based code
package com.aryana_landscaping.Entity;

import javax.persistence.*;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "userName", nullable = false)
    private String userName;

    @Column(name = "currentPassword")
    private String currentPassword;

    @Column(name = "email")
    private String email;

    @Column(name = "userkey")
    private String key;

    @Column(name = "profile")
    private String profile;

    @Column(name = "profile_public_id")
    private String profilePublicId;

    @Column(name = "profile_type")
    private String profileType;

    @Column(name = "profile_name")
    private String profileName;

    public User() {}

    public User(String userName, String email, String currentPassword, String key, String profile) {
        this.userName = userName;
        this.currentPassword = currentPassword;
        this.key = key;
        this.profile = profile;
        this.email = email;
    }

    // --- Getters and Setters ---

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public String getCurrentPassword() { return currentPassword; }
    public void setCurrentPassword(String currentPassword) { this.currentPassword = currentPassword; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getKey() { return key; }
    public void setKey(String key) { this.key = key; }

    public String getProfile() { return profile; }
    public void setProfile(String profile) { this.profile = profile; }

    public String getProfilePublicId() { return profilePublicId; }
    public void setProfilePublicId(String profilePublicId) { this.profilePublicId = profilePublicId; }

    public String getProfileType() { return profileType; }
    public void setProfileType(String profileType) { this.profileType = profileType; }

    public String getProfileName() { return profileName; }
    public void setProfileName(String profileName) { this.profileName = profileName; }
}
