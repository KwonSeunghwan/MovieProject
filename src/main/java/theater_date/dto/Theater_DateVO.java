package theater_date.dto;

import java.sql.Timestamp;

//import theater.dto.TheaterVO;

public class Theater_DateVO {
	private int theater_date_num;
	private Timestamp th_date;
	private int mv_num;
	private int th_num;
	private int seat_rem;
//	private TheaterVO thVo = new TheaterVO();
	
	public int getTheater_date_num() {
		return theater_date_num;
	}
	public void setTheater_date_num(int theater_date_num) {
		this.theater_date_num = theater_date_num;
	}
	public Timestamp getTh_date() {
		return th_date;
	}
	public void setTh_date(Timestamp th_date) {
		this.th_date = th_date;
	}
	public int getMv_num() {
		return mv_num;
	}
	public void setMv_num(int mv_num) {
		this.mv_num = mv_num;
	}
	public int getTh_num() {
		return th_num;
	}
	public void setTh_num(int th_num) {
		this.th_num = th_num;
	}
//	public TheaterVO getThVo() {
//		return thVo;
//	}
//	public void setThVo(TheaterVO thVo) {
//		this.thVo = thVo;
//	}
	
	public int getSeat_rem() {
		return seat_rem;
	}
	public void setSeat_rem(int seat_rem) {
		this.seat_rem = seat_rem;
	}
}
