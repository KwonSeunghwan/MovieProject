package reserve.dto;

import java.sql.Timestamp;

public class ReserveVO {
	private int re_num;
	private String seat_num;
	private String mem_name;
	private	String mv_name;
	private	int	th_num;
	private	Timestamp th_date;
	private String mem_id;
	
	
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	public String getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(String seat_num) {
		this.seat_num = seat_num;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMv_name() {
		return mv_name;
	}
	public void setMv_name(String mv_name) {
		this.mv_name = mv_name;
	}
	public int getTh_num() {
		return th_num;
	}
	public void setTh_num(int th_num) {
		this.th_num = th_num;
	}
	public Timestamp getTh_date() {
		return th_date;
	}
	public void setTh_date(Timestamp th_date) {
		this.th_date = th_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
}
