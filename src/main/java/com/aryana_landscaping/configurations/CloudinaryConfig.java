package com.aryana_landscaping.configurations;
import com.cloudinary.Cloudinary;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import java.util.HashMap;
import java.util.Map;
@Configuration
public class CloudinaryConfig {
        @Bean
        public Cloudinary cloudinary() {
            Map<String, String> config = new HashMap<>();
            config.put("cloud_name", "dqr2rknbm");
            config.put("api_key", "111125556536522");
            config.put("api_secret", "nJqGU0rhQf7ERmeLHWYFUQSrccA");
            return new Cloudinary(config);
        }
}
