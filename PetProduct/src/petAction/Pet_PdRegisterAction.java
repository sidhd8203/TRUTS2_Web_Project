package petAction;

import java.io.File;
import java.util.Calendar;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.Action;

import controller.Pet_PdDAO;
import dto.Pet_PdDTO;

public class Pet_PdRegisterAction implements Action {
	// 멤버필드
	private String p_name;
	private String m_id;
	private String p_content;
	private int p_price;	
	private String p_address;
	private String message;
	private String p_img;
	Calendar today = Calendar.getInstance();

	private static final String UploadPath = "D:\\source\\PetProduct\\WebContent\\img\\";  // 파일의 위치
	private File upload; // 파일 객체 원래이름
	private String uploadContentType; // 파일의 형테
	private String uploadFileName; // 파일 새로운 이름이름
	
	
	File saveFile;
	
	public String execute() throws Exception {
		int num1=(int)(Math.random() * 100) + 1;
		if (p_name.equals("") || m_id.equals("") || p_content.equals("") || p_price == 0 ) {
	         message = "빈 칸이 있으면 안됩니다.";
	         return ERROR;
	      }
		
		if(upload != null && upload.exists()) {		
					   
		      Pet_PdDAO dao = new Pet_PdDAO();
		
		         p_img =num1+uploadFileName; // 이름 저장
		         saveFile = new File( UploadPath + num1+uploadFileName); // 우리서버에 올리는것
		         p_address = saveFile.getAbsolutePath(); // 값의 경로
		         FileUtils.copyFile(upload, saveFile);
		         Pet_PdDTO dto = new Pet_PdDTO(p_price, p_name,p_img,p_address,p_content,m_id);
		        int res = dao.insertPet_Pd(dto);
		       
		if(res > 0) {
			return SUCCESS;
		}else {
			 message = "다시 등록해주세요."; 
			 return ERROR;
		}
		}
			
		if(p_name.equals("") || p_content.equals("") || 
			p_price == 0) {
		message = "빈 칸이 있으면 안됩니다.";
		return ERROR;
		}
		
		return ERROR;
		
		
	}
	
	
	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
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
	
	
	


	
}
