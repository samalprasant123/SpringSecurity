package com.prasant.spring.mvc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.prasant.spring.mvc.model.User;

@Component("userDao")
public class UserDAO {

	private NamedParameterJdbcTemplate jdbcTemplate;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Transactional
	public boolean create(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		BeanPropertySqlParameterSource paramMap = new BeanPropertySqlParameterSource(user);
		String sql1 = "INSERT INTO users VALUES (:username, :password, :email, :enabled)";
		jdbcTemplate.update(sql1, paramMap);
		String sql2 = "INSERT INTO authorities VALUES (:username, :authority)";
		return jdbcTemplate.update(sql2, paramMap) == 1;
	}

	public boolean getUser(String username) {
		String sql = "SELECT COUNT(*) FROM users where username = :username";
		MapSqlParameterSource paramMap = new MapSqlParameterSource();
		paramMap.addValue("username", username);
		return jdbcTemplate.queryForObject(sql, paramMap, Integer.class) == 1;
	}

	public List<User> getUsers() {
		String sql = "SELECT * FROM users, authorities where users.username = authorities.username";
		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class));
	}
}
