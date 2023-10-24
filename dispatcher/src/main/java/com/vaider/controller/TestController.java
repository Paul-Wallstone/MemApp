package com.vaider.controller;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * @author ppuchinsky
 */
@RequestMapping("/test")
@RestController
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class TestController {
    @GetMapping
    public ResponseEntity<?> test() {
        return ResponseEntity.ok("Test success!");
    }
}
