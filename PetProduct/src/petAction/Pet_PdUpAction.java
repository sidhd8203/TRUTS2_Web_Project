package petAction;

import com.opensymphony.xwork2.Action;

import controller.Pet_PdDAO;
import dto.Pet_PdDTO;

public class Pet_PdUpAction implements Action{
	private int p_num;
	private int p_price;
	private String p_img;
	private String p_address;
	private String p_name;
	private String p_content;
	private String m_id;
	private Pet_PdDTO dto1;
	@Override
	public String execute() throws Exception {
		Pet_PdDTO dto = new Pet_PdDTO(p_num, p_price, p_name, p_img, p_address, p_content, m_id);
		Pet_PdDAO dao = new Pet_PdDAO();
		int num = 0;
		dto1 = dao.selectPet_Pd(p_num);
				
		return SUCCESS;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

}
