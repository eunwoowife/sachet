package com.kh.sachet.ticketing.model.vo;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class TicketInfo {
	
	private String ticketDate;
	private int userNo;
	private String userName;
	private String phone;
	private String email;
	private int totalPrice;
	private int totalPeople;
	private String bookingtime;
	private int ticketAdult;
	private int ticketKid;
	private int ticketFree;
	private int ticketNo;
	private int orderNo;
	
}