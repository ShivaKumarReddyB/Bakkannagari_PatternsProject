package com.ShivaMileStone.DMS.respository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ShivaMileStone.DMS.Models.Dog;

public interface DogRepository  extends CrudRepository<Dog, Integer>{
	List<Dog> findByName(String name);
	

}
