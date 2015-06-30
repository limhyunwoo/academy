
package com.hompage.web.controllers;

import com.homepage.web.serviceimpls.ReservationServiceImpl;
import com.homepage.web.services.ReservationService;

public class ReservationMain {
	public static void main(String[] args) {
		ReservationService service = new ReservationServiceImpl();
		service.process();
	}
}
