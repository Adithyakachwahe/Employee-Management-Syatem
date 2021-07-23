package com.adithya.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adithya.demo.bean.Registration;

public interface RegistrationJpaRepo extends JpaRepository<Registration, Integer> {

}
