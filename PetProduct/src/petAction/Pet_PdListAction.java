package petAction;

import java.util.ArrayList;

import com.opensymphony.xwork2.Action;

import controller.Pet_PdDAO;
import dto.Pet_PdDTO;

public class Pet_PdListAction implements Action{
	
	private ArrayList<Pet_PdDTO> pet_PdList = null;
	
	public String execute() throws Exception {
		pet_PdList = new ArrayList<Pet_PdDTO>();
		Pet_PdDAO dao = new Pet_PdDAO();
		pet_PdList = dao.selectPet();
		
		
		return SUCCESS;
	}
	
	
	public ArrayList<Pet_PdDTO> getPet_PdList() {		
		return pet_PdList;
	}
	public void setPet_PdList(ArrayList<Pet_PdDTO> pet_PdList) {
		this.pet_PdList = pet_PdList;
	}
	
}
