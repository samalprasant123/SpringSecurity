package com.prasant.spring.mvc.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.prasant.spring.mvc.validator.ValidEmail;

public class User {

	@NotBlank(message="Username cannot be blank")
	@Size(min=5, max=15, message="Username must be between 5 and 15 characters")
	@Pattern(regexp="^\\w{5,}$", message="Username must be alphabets, digits and underscore only")
	private String username;
	
	@NotBlank(message="Email cannot be blank")
	@ValidEmail
	private String email;
	
	@NotBlank(message="Password cannot be blank")
	@Pattern(regexp="^\\S+$", message="Password cannot contain spaces")
	@Size(min=5, max=20, message="Password must be between 5 and 20 characters")
	private String password;
	
	private boolean enabled = false;
	
	private String authority;
	
	public User() {
		
	}

	public User(String username, String email, String password, boolean enabled, String authority) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.enabled = enabled;
		this.authority = authority;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", email=" + email + ", password=" + password + ", enabled=" + enabled
				+ ", authority=" + authority + "]";
	}
}
