package com.homepage.web.serviceimpls;

import com.homepage.web.services.HelloService;


public class HelloServiceImpl implements HelloService{

	@Override
	public String greet() {
		
		return "반갑습니다.";
	}
	
}
