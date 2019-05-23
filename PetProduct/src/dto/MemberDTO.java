package dto;

public class MemberDTO {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_address;
	private int m_admin;
	private int m_resv;
	private int m_phone;
	
	public MemberDTO() {}
// 널이어도 되는 속성일 경우 따로 그것을 뺀 생성자를 만들어줘야한다.

	public MemberDTO(String m_id, String m_pw, String m_name, String m_email, String m_address, int m_admin, int m_resv,
			int m_phone) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_address = m_address;
		this.m_admin = m_admin;
		this.m_resv = m_resv;
		this.m_phone = m_phone;
	}

	public MemberDTO(String m_id, String m_pw, String m_name, String m_email, String m_address, int m_phone) {
	super();
	this.m_id = m_id;
	this.m_pw = m_pw;
	this.m_name = m_name;
	this.m_email = m_email;
	this.m_address = m_address;
	this.m_phone = m_phone;
}
	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public int getM_admin() {
		return m_admin;
	}

	public void setM_admin(int m_admin) {
		this.m_admin = m_admin;
	}

	public int getM_resv() {
		return m_resv;
	}

	public void setM_resv(int m_resv) {
		this.m_resv = m_resv;
	}

	public int getM_phone() {
		return m_phone;
	}

	public void setM_phone(int m_phone) {
		this.m_phone = m_phone;
	};
	
}
