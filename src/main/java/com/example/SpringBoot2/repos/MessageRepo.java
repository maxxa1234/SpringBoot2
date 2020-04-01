package com.example.SpringBoot2.repos;

import org.springframework.data.repository.CrudRepository;

import com.example.SpringBoot2.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer>  {

    List<Message> findByTag(String tag);
}
