package dto;

public class Pet_PdDTO {
	private int p_num;
	private String p_name;
	private String p_content;
	private int p_hit;
	private int p_price;
	private String m_id;
	private String p_img;
	private String p_address;
	
	public Pet_PdDTO() {}
	
	public Pet_PdDTO(String p_name, String p_content, int p_price, String m_id) {
		this.p_name = p_name;
		this.p_content = p_content;
		this.p_price = p_price;
		this.m_id = m_id;
	}
	

	public Pet_PdDTO( int p_price,String p_name,String p_img,String p_address, String p_content, String m_id) {
		this.p_price = p_price;
		this.p_name = p_name;		
		this.p_img = p_img;
		this.p_address = p_address;
		this.p_content = p_content;
		this.m_id = m_id;
	}

	public Pet_PdDTO(int p_num, int p_price, String p_name, String p_img, String p_address, String p_content, String m_id) {
		this.p_num = p_num;
		this.p_price = p_price;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_address = p_address;
		this.p_content = p_content;
		this.m_id = m_id;
		
	}

	public Pet_PdDTO(int p_num) {
		super();
		this.p_num = p_num;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
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

	public int getP_hit() {
		return p_hit;
	}

	public void setP_hit(int p_hit) {
		this.p_hit = p_hit;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	
	
}