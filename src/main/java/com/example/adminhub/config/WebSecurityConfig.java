package com.example.adminhub.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity, HandlerMappingIntrospector introspector) throws Exception {
        MvcRequestMatcher.Builder mvcMatcherBuilder = new MvcRequestMatcher.Builder(introspector);

        httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers(mvcMatcherBuilder.pattern("/registration")).permitAll()
                        .requestMatchers(mvcMatcherBuilder.pattern("/admin/**")).hasRole("ADMIN")
                        .requestMatchers(mvcMatcherBuilder.pattern("/news")).hasRole("USER")
                        .requestMatchers(mvcMatcherBuilder.pattern("/profile")).hasRole("USER")
                        .requestMatchers(mvcMatcherBuilder.pattern("/chat")).hasRole("USER")
                        .requestMatchers(mvcMatcherBuilder.pattern("/resources/**")).permitAll()
                        .requestMatchers(mvcMatcherBuilder.pattern("/")).permitAll()
                        .anyRequest().permitAll()
                )
                .formLogin(formLogin -> formLogin
                        .loginPage("/login")
                        .defaultSuccessUrl("/profile")
                        .permitAll()
                )
                .logout(logout -> logout
                        .permitAll()
                        .logoutSuccessUrl("/"));

        return httpSecurity.build();
    }
}