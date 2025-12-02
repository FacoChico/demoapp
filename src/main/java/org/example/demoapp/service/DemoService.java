package org.example.demoapp.service;

import org.springframework.stereotype.Service;

@Service
public class DemoService {
    private static final String DEMO_STRING = "Hello World! It's demo string for Fundamentals of pipeline development";

    public String getDemoString() {
        return DEMO_STRING;
    }
}
