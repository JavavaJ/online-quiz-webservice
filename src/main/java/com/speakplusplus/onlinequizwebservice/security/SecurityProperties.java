package com.speakplusplus.onlinequizwebservice.security;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@ConfigurationProperties(prefix = "security")
public class SecurityProperties {

    private String csrf;

    private String jwtSecret;

    private long jwtExpireAfterWeeks;

    public String getCsrf() {
        return csrf;
    }

    public String getJwtSecret() {
        return jwtSecret;
    }

    public long getJwtExpireAfterWeeks() {
        return jwtExpireAfterWeeks;
    }

    public boolean isCsrfEnabled() {
        return Boolean.parseBoolean(getCsrf());
    }

    public void setCsrf(String csrf) {
        this.csrf = csrf;
    }

    public void setJwtSecret(String jwtSecret) {
        this.jwtSecret = jwtSecret;
    }

    public void setJwtExpireAfterWeeks(long jwtExpireAfterWeeks) {
        this.jwtExpireAfterWeeks = jwtExpireAfterWeeks;
    }
}
