package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.model.*;
@Repository
public interface UserDao extends JpaRepository<User, Integer> {
	
	User save(User u); //save and update
	@Query(value="delete from User where id=?1", nativeQuery=true)
	@Modifying
	int deleteById(int id);
	
	User findById(int id);

}
