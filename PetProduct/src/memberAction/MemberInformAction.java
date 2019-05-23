package memberAction;

import com.opensymphony.xwork2.ActionSupport;

import controller.MemberDAO;
import dto.MemberDTO;

@SuppressWarnings("serial")
public class MemberInformAction extends ActionSupport{
	
	private String pass;	// 입력한 비밀번호
	private String message;
	private String m_id;
	private String m_pw;
	
	@Override
	public String execute() throws Exception {
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		dto = dao.searchPW(m_id,pass);
		
		
		if(!pass.equals(m_pw)) {
		 message = "비밀번호가 일치하지 않습니다.";
		 return ERROR;
		}	
		return SUCCESS;
	}
	
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
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



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

}
