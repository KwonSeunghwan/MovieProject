package member.dto;

// VO : ? Object
// DTO : Dat ? Object
public class MemberVO {
	// 필드
	private int num;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_phone;
	private String mem_email;
	private int mem_grade;
	
	// default 생성자
	public MemberVO() { }
	
	// 전체 필드를 초기화 full 생성자
	public MemberVO(String mem_id, String mem_pw, String mem_name, String mem_phone, String mem_email, int mem_grade) {
		super();
		this.mem_id = mem_id;
		this.mem_pw= mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_grade = mem_grade;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public int getGrade() {
		return mem_grade;
	}

	public void setGrade(int grade) {
		this.mem_grade = grade;
	}

	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_phone="
				+ mem_phone + ", mem_email=" + mem_email + ", grade=" + mem_grade + "]";
	}

	
}