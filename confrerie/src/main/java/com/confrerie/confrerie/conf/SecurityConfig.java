package com.confrerie.confrerie.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;



@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(requests -> requests
                .requestMatchers(AntPathRequestMatcher.antMatcher("/")).permitAll()
                .requestMatchers(AntPathRequestMatcher.antMatcher("/bieres")).permitAll()
                .requestMatchers(AntPathRequestMatcher.antMatcher("/biere/**")).permitAll()
                .requestMatchers(AntPathRequestMatcher.antMatcher("/upload")).hasRole("ADMIN")
                .requestMatchers(AntPathRequestMatcher.antMatcher("/delete/**")).hasRole("ADMIN")
                .requestMatchers(AntPathRequestMatcher.antMatcher("/**")).hasRole("ADMIN")
                .anyRequest().authenticated()).httpBasic(Customizer.withDefaults()).cors(Customizer.withDefaults())
                .logout(logout -> logout
                        .permitAll()).csrf(AbstractHttpConfigurer::disable);
        return http.build();
    }

    @Bean
	public UserDetailsService userDetailsService() {
		UserDetails user =
			 User.withDefaultPasswordEncoder()
				.username("Confrere")
				.password("Labiere786,")
				.roles("ADMIN")
				.build();

		return new InMemoryUserDetailsManager(user);
	}
}


