package com.speakplusplus.onlinequizwebservice.security;

import com.speakplusplus.onlinequizwebservice.security.jwt.JwtConfigurer;
import com.speakplusplus.onlinequizwebservice.security.jwt.JwtTokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer {

    private final AppUserService userDetailService;
    private final PasswordEncoder encoder;
    private final SecurityProperties securityProps;
    private final JwtTokenProvider jwtTokenProvider;

    private static final String LOGIN_ENDPOINT = "/api/v1/auth/**";
    private static final String STUDENT_ENDPOINT = "api/v1/student/**";
    private static final String TEACHER_ENDPOINT = "api/v1/teacher/**";
    private static final String H2_CONSOLE_ENDPOINT = "/h2-console/**";

    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//            .antMatchers(TEACHER_ENDPOINT).hasAuthority("ASSIGNMENT_WRITE")
//            .antMatchers(STUDENT_ENDPOINT).hasAuthority("ASSIGNMENT_READ")
//            .antMatchers( "index", "/css/*", "/js/*").permitAll()
//////            .antMatchers("/**").permitAll()
//            .and().headers().frameOptions().sameOrigin()  // to enable h2 console
//            .and().formLogin().loginPage("/login").permitAll()
//            .defaultSuccessUrl("/main", true) // todo change defaultSuccessUrl
//            .and().logout();


        http
            .httpBasic().disable()
            .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            .and()
            .authorizeRequests()
            .antMatchers(LOGIN_ENDPOINT).permitAll()
            .antMatchers(H2_CONSOLE_ENDPOINT).permitAll()
            .antMatchers(TEACHER_ENDPOINT).hasAuthority("ASSIGNMENT_WRITE")
            .antMatchers(STUDENT_ENDPOINT).hasAuthority("ASSIGNMENT_READ")
            .anyRequest().authenticated()
            .and()
            .apply(new JwtConfigurer(jwtTokenProvider))
            .and().cors();

        http.headers().frameOptions().sameOrigin();  // to enable h2 console


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

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
}
