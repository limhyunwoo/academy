package com.homepage.web.services;

public interface ReservationService {
	public String checkIn(int floor,int row, String id);
	public String checkOut(int floor,int row, String id);
	public String[][] showStatus();
	public void process();
}
