package com.cts.chargeback.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserAuthenticationSuccessHandler successHandler;
	@Autowired
	UserDetailsService userDetails;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetails).passwordEncoder(passwordEncoder());
	}
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
	    http.authorizeRequests().anyRequest().hasAnyRole("ADMIN","USER")
	    .and()
	    .authorizeRequests().antMatchers("/user/**").permitAll()
	    .and()
	    .authorizeRequests().antMatchers("/login**").permitAll()
	    .and()
	    .formLogin().loginPage("/login").loginProcessingUrl("/loginAction").successHandler(successHandler).permitAll()
	    .and()
	    .logout().logoutUrl("/logout").logoutSuccessUrl("/login").permitAll()
	    .and()
	    .csrf().disable();
		
		
		
	}
	
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
		web.ignoring().antMatchers("/user/**");
	}


}
