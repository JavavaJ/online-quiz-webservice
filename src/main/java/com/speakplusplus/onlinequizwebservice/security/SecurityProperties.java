package com.speakplusplus.onlinequizwebservice.security;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@ConfigurationProperties(prefix = "security.enable")
public class SecurityProperties {

    private String csrf;

    public String getCsrf() {
        return csrf;
    }

    public boolean isCsrfEnabled() {
        return Boolean.parseBoolean(getCsrf());
    }

    public void setCsrf(String csrf) {
        this.csrf = csrf;
    }
}
