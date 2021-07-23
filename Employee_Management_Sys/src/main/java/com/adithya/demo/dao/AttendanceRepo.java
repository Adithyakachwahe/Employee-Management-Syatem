package com.adithya.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adithya.demo.bean.attendance;


public interface AttendanceRepo extends JpaRepository<attendance, Integer>{

	
	
}
