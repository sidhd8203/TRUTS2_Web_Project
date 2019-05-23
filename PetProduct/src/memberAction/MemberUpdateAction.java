package memberAction;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import controller.MemberDAO;
import dto.MemberDTO;

public class MemberUpdateAction implements Action {
	private String m_id;
	private Map<String, Object> session ;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_address;
	private int m_admin;
	private int m_phone;
	private int m_ressv;
	
	
	private String message;
	
	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		session =context.getSession();
		
		
		m_id = (String)session.get("m_id");
		MemberDTO dto;
		MemberDAO dao = new MemberDAO();
		
		dto = new MemberDTO(m_id, m_pw, m_name, m_email, m_address, m_phone);
		 
		int num = 0;
		num = dao.memberUpdate(dto);
		
		
		if(num == 1) {
			message = "변경성공";
			session = (Map<String, Object>)context.getSession();
			session.put("m_pw", m_pw);
			context.setSession(session);
			return SUCCESS;
		}
		message = "형식에 적합하지 않습니다.";
		return ERROR;
	}

	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	public int getM_phone() {
		return m_phone;
	}

	public void setM_phone(int m_phone) {
		this.m_phone = m_phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	public int getM_admin() {
		return m_admin;
	}


	public void setM_admin(int m_admin) {
		this.m_admin = m_admin;
	}


	public int getM_ressv() {
		return m_ressv;
	}


	public void setM_ressv(int m_ressv) {
		this.m_ressv = m_ressv;
	}
		

}
