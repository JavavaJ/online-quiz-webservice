package com.speakplusplus.onlinequizwebservice.config;

import com.speakplusplus.onlinequizwebservice.security.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ConfigurationProperties(prefix = "security.enable")
public class SecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer {

//    @Value("${security.enable-csrf}")
//    private boolean isCsrfEnabled;

    @Autowired
    private AppUserService userDetailService;

    @Autowired
    private PasswordEncoder encoder;

    private String csrf;



    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/**").permitAll()
            .and().headers().frameOptions().sameOrigin();

        if (!Boolean.parseBoolean(csrf)) {
            http.csrf().disable();
        }
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
//            .allowedOrigins("http://127.0.0.1:5500/")
            .allowedOrigins("*")
            .allowedMethods("*");
    }

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailService);
        authenticationProvider.setPasswordEncoder(encoder);
        return authenticationProvider;
    }
}
