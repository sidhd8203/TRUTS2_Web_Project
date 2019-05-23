package memberAction;

import com.opensymphony.xwork2.Action;

import controller.MemberDAO;
import dto.MemberDTO;

public class MemberRegisterAction implements Action {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private int m_phone;
	private String m_address;
	


	private String message;

	@Override
	public String execute() throws Exception {
		MemberDTO dto = new MemberDTO(m_id,m_pw,m_name,m_email,m_address,m_phone);
		MemberDAO dao = new MemberDAO();
		int res = dao.memberInsert(dto);
		
		if(res > 0) {
		return SUCCESS;
	}	
		return ERROR;
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

	public int getM_phone() {
		return m_phone;
	}

	public void setM_phone(int m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	

	
	
}
