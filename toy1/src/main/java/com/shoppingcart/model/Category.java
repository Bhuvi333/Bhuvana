package com.shoppingcart.model;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
//@Table(name="category")
//@Component
public class Category {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
private String name;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
private String description;



}


