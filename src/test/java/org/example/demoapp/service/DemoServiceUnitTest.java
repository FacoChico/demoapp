package org.example.demoapp.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class DemoServiceUnitTest {
    private static final String EXPECTED_DEMO_STRING = "Hello World! It's demo string for Fundamentals of pipeline development";

    @Test
    void shouldReturnDemoString() {
        final var demoService = new DemoService();

        final var demoString = demoService.getDemoString();

        assertEquals(EXPECTED_DEMO_STRING, demoString);
    }
}