package com.adithya.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adithya.demo.bean.User;


public interface EmployeeJpaRepo extends JpaRepository<User, Integer>
{

}

