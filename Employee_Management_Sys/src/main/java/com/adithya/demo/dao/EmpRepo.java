package com.adithya.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adithya.demo.bean.emp;



public interface EmpRepo extends JpaRepository<emp, Integer>{


}