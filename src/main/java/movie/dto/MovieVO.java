package movie.dto;

public class MovieVO {
	private int mv_num;
	private String mv_name;
	private int mv_price;
	private String mv_actor;
	private String mv_director;
	private String summary;
	
	
	public int getMv_num() {
		return mv_num;
	}
	public void setMv_num(int mv_num) {
		this.mv_num = mv_num;
	}
	public String getMv_name() {
		return mv_name;
	}
	public void setMv_name(String mv_name) {
		this.mv_name = mv_name;
	}
	public int getMv_price() {
		return mv_price;
	}
	public void setMv_price(int mv_price) {
		this.mv_price = mv_price;
	}
	public String getMv_actor() {
		return mv_actor;
	}
	public void setMv_actor(String mv_actor) {
		this.mv_actor = mv_actor;
	}
	public String getMv_director() {
		return mv_director;
	}
	public void setMv_director(String mv_director) {
		this.mv_director = mv_director;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
}
