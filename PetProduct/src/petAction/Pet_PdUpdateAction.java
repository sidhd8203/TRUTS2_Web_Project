package petAction;

import java.io.File;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.Action;

import controller.Pet_PdDAO;
import dto.Pet_PdDTO;


public class Pet_PdUpdateAction implements Action{
	
	private int p_num;
	private int p_price;
	private String p_name;
	private String p_img;
	private String p_address;
	private String p_content;
	private int p_hit;
	private String m_id;
	
	private static final String UploadPath = "D:/source/PetProduct/WebContent/img/";  // 파일의 위치
	private File upload;
	private String uploadContentType; // 파일의 형테
	private String uploadFileName; // 파일 새로운 이름이름
	private long uploadFileSize;
	private File saveFile;
	private String message;
	private Pet_PdDTO dto;
	
	@Override
	public String execute() throws Exception {	
		int num1 =(int)(Math.random() * 100) + 1;
		Pet_PdDAO dao = new Pet_PdDAO();
		int num = 0;	
		
		
		/*if(upload != null & upload.exists()) {*/
			
		p_img =num1+uploadFileName; // 사진이름 저장
		File new_saveFile = new File( UploadPath + num1+uploadFileName); // 새로운 파일에 값 저장
		Pet_PdDTO old_pd=dao.selectPet_Pd(p_num); // p_num로 전에 있는 속성값 불러옴
		dto = new Pet_PdDTO(p_num,p_price,p_name,p_img,p_address,p_content,m_id);// num 
		num = dao.updatePet(dto);	
	
		if(num == 1){
			 File deleteFile = new File(UploadPath +old_pd.getP_address());
		        deleteFile.delete();
		    	FileUtils.copyFile(upload, new_saveFile);	
		    	
				FileUtils.forceDelete(upload); 
			message = "수정완료";
		return SUCCESS;
		}
			message = "수정오류";
		return ERROR;
	}
	/*	
		return ERROR;
}*/

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

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
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

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
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

	public long getUploadFileSize() {
		return uploadFileSize;
	}

	public void setUploadFileSize(long uploadFileSize) {
		this.uploadFileSize = uploadFileSize;
	}

	public File getSaveFile() {
		return saveFile;
	}

	public void setSaveFile(File saveFile) {
		this.saveFile = saveFile;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Pet_PdDTO getDto() {
		return dto;
	}

	public void setDto(Pet_PdDTO dto) {
		this.dto = dto;
	}

	
	

}
