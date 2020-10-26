package com.speakplusplus.onlinequizwebservice.security;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer {

    private final AppUserService userDetailService;
    private final PasswordEncoder encoder;
    private final SecurityProperties securityProps;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("api/v1/teacher/**").hasRole("TEACHER")
            .antMatchers("api/v1/student/**").hasRole("STUDENT")
            .antMatchers( "index", "/css/*", "/js/*").permitAll()
//            .antMatchers("/**").permitAll()
            .and().headers().frameOptions().sameOrigin()  // to enable h2 console
            .and().formLogin().loginPage("/login").permitAll()
            .defaultSuccessUrl("/chooseTopic", true); // todo change defaultSuccessUrl

        if (!securityProps.isCsrfEnabled()) {
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
