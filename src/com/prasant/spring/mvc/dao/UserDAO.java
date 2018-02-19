package com.prasant.spring.mvc.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.prasant.spring.mvc.model.User;

@Component("userDao")
public class UserDAO {

	private NamedParameterJdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Transactional
	public boolean create(User user) {
		BeanPropertySqlParameterSource paramMap = new BeanPropertySqlParameterSource(user);
		String sql1 = "INSERT INTO users VALUES (:username, :password, :email, :enabled)";
		jdbcTemplate.update(sql1, paramMap);
		String sql2 = "INSERT INTO authorities VALUES (:username, :authority)";
		return jdbcTemplate.update(sql2, paramMap) == 1;
	}
}
