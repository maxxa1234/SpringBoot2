package com.example.SpringBoot2.repos;

import org.springframework.data.repository.CrudRepository;

import com.example.SpringBoot2.domain.Message;

public interface MessageRepo extends CrudRepository<Message, Integer>  {
}
