package com.monami.board.dao;

public class EBoardDTO {
	int event_idx;
	String event_title;
	int created_at;
	String event_content;
	String event_writer;
	
	
	public int getEvent_idx() {
		return event_idx;
	}
	public void setEvent_idx(int event_idx) {
		this.event_idx = event_idx;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public int getCreated_at() {
		return created_at;
	}
	public void setCreated_at(int created_at) {
		this.created_at = created_at;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public String getEvent_writer() {
		return event_writer;
	}
	public void setEvent_writer(String event_writer) {
		this.event_writer = event_writer;
	}
}
