package com.kh.sachet.ticketing.model.vo;

import java.sql.Date;

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
public class Ticket {
	
	private int ticketNo;
	private int userNo;
	private int ticketAdult;
	private int ticketKid;
	private int ticketFree;
	private String ticketDate;
	private String ticketStatus;
	
	

}
