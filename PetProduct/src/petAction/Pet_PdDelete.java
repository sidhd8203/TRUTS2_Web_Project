package petAction;

import com.opensymphony.xwork2.Action;
import controller.Pet_PdDAO;
import dto.Pet_PdDTO;

public class Pet_PdDelete implements Action {
	private int p_num;
	private Pet_PdDTO pet_pd;
		
	@Override
	public String execute() throws Exception {
		
		Pet_PdDAO dao = new Pet_PdDAO();
		int num = dao.deletePet_pd(p_num);	
		
		if(num==1)
		return SUCCESS;		
		
		return ERROR;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public Pet_PdDTO getPet_pd() {
		return pet_pd;
	}

	public void setPet_pd(Pet_PdDTO pet_pd) {
		this.pet_pd = pet_pd;
	}
	
	
}
