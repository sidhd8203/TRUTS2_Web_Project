package memberAction;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import controller.MemberDAO;


public class MemberDelectAction implements Action{
	private String m_id;
	private String message;
	private String m_pw;
	@Override
	public String execute() throws Exception {

		System.out.println(m_id);
		System.out.println("탈퇴"+m_pw);
		MemberDAO dao = new MemberDAO();
		int num = dao.memberDelete(m_id);
		
		if(num==1) {
		message = "탈퇴가 완료되었습니다.";
		
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session  = (Map<String, Object>)context.getSession();
		
		if(session.get("m_id") != null) {	
		session.remove("m_id");			
		context.setSession(session);
		}
		return SUCCESS;
		}
		
		message = "못 나가";
		return ERROR;
	}

	

	public String getM_id() {
		return m_id;
	}



	public void setM_id(String m_id) {
		this.m_id = m_id;
	}



	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}



	public String getM_pw() {
		return m_pw;
	}



	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	
}
