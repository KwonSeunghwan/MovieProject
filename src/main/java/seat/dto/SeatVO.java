package seat.dto;

public class SeatVO {
	private int seat_inuse;
	private String seat_num;
	private int th_num;
	
	public int getSeat_inuse() {
		return seat_inuse;
	}
	public void setSeat_inuse(int seat_inuse) {
		this.seat_inuse = seat_inuse;
	}
	public String getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(String string) {
		this.seat_num = string;
	}
	public int getTh_num() {
		return th_num;
	}
	public void setTh_num(int th_num) {
		this.th_num = th_num;
	}
}
