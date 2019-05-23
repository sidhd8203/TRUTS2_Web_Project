package memberAction;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import controller.MemberDAO;
import dto.MemberDTO;

@SuppressWarnings("serial")
public class MemberLoginAction extends ActionSupport {
	
	private String m_id;
	private String m_pw;

	private String message;
	

	// index
	public String index() throws Exception{
		if(ActionContext.getContext().getSession().get("m_id") == null)
			return ERROR;
		else
			return SUCCESS;
	}
	
	// login
	public String login() throws Exception{
					
			ActionContext context = ActionContext.getContext();
			MemberDAO dao = new MemberDAO();
			MemberDTO dto = null;
			dto = dao.memberLogin(m_id, m_pw);
			if(dto != null) {
			Map<String, Object> session = (Map<String, Object>)context.getSession();
			session.put("m_id", m_id);
			session.put("m_pw",m_pw);
			session.put("m_phone", dto.getM_phone());
			session.put("m_email", dto.getM_email());
			
			context.setSession(session);
			
			return SUCCESS;
			}
			
			message = "아이디 또는 비밀번호가 옳바르지 않습니다.";
			return ERROR;  
				
	}
		
	
	// logout
	public String logout() throws Exception{
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = (Map<String, Object>)context.getSession();
		
		if(session.get("m_id") != null){
			
			session.remove("m_id");
			session.remove("m_pw");
		}
		context.setSession(session);
		
		return SUCCESS;
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
