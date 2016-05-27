package com.security;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Authorities {

	
	@Id
	int authorityId;

	@ManyToOne(cascade=javax.persistence.CascadeType.ALL)
	User userId;
	public int getAuthorityId() {
	    return authorityId;
	}
	public void setAuthorityId(int authorityId) {
	    this.authorityId = authorityId;
	}
	public User getUserId() {
	    return userId;
	}
	public void setUserId(User userId) {
	    this.userId = userId;
	}
	public String getRolename() {
	    return rolename;
	}
	public void setRolename(String rolename) {
	    this.rolename = rolename;
	}
	String rolename;


}
