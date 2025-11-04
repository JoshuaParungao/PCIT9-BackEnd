package com.parungao.facebookapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FacebookapiApplication {

    public static void main(String[] args) {
        SpringApplication.run(FacebookapiApplication.class, args);
        System.out.println("🚀 Facebook-like API running at http://localhost:8080/api/posts");
    }
}
