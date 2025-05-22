package com.telusko.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.telusko.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity,Serializable> {

}
