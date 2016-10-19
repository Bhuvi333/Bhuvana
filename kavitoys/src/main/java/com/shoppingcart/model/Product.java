


package com.shoppingcart.model;

import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.persistence.GeneratedValue;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {

		@Id

		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int pid;
		private String name;
		private String description;
		private double price;
		private int sid;
		private int id;
		
@Transient
private MultipartFile file;
private String imgs;
	

public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getImgs() {
	return imgs;
}
public void setImgs(String imgs) {
	this.imgs = imgs;
}
public MultipartFile getFile() {
return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
	}

		
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
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		
		

}
