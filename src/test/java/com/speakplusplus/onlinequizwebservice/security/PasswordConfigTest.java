package com.speakplusplus.onlinequizwebservice.security;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class PasswordConfigTest {

    @Autowired
    private PasswordEncoder encoder;

    @Test
    public void testBCryptPasswordEncoder() {
        String pass = "12345";

        String encodedPass = encoder.encode(pass);
        System.out.println("======================= Encoded pass =======================");
        System.out.println(encodedPass);
        System.out.println("======================= Encoded pass =======================");

    }

}