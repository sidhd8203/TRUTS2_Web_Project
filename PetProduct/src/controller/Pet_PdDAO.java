package controller;

import static controller.JdbcUtils.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Pet_PdDTO;

public class Pet_PdDAO {
	
	public int insertPet_Pd(Pet_PdDTO dto) {
		String sql = "insert into pet_Pd values(p_num.nextval,?,?,?,?,?,0,?)";
		int res = 0; 
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getP_price());
			pstmt.setString(2, dto.getP_name());
			pstmt.setString(3, dto.getP_img());
			pstmt.setString(4, dto.getP_address());
			pstmt.setString(5, dto.getP_content());
			pstmt.setString(6, dto.getM_id());
						
			res = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return res;
	}


	public ArrayList<Pet_PdDTO> selectPet() {
		String sql = "select * from pet_pd";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Pet_PdDTO> pet_PdList = null;
		Connection conn = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {						
				pet_PdList = new ArrayList<Pet_PdDTO>();
				
				do {
					pet_PdList.add(new Pet_PdDTO(rs.getInt("p_num"),
									   			 rs.getInt("p_price"),
								   			 rs.getString("p_name"),
								   			 rs.getString("p_img"),
								   			 rs.getString("p_address"),
								   			 rs.getString("p_content"),
								   			 rs.getString("m_id")));	
				}while(rs.next());
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		
		return pet_PdList;
	}
	
	
	public Pet_PdDTO selectPet_Pd(int p_num) {
		String sql = "select * from pet_pd where p_num=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Pet_PdDTO pet = null;
		Connection conn = null;
		
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {						
				pet = new Pet_PdDTO(rs.getInt("p_num"),
			   			 rs.getInt("p_price"),
			   			 rs.getString("p_name"),
			   			 rs.getString("p_img"),
			   			 rs.getString("p_address"),
			   			 rs.getString("p_content"),
			   			 rs.getString("m_id"));	
				}			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,rs);
		}
		
		return pet;
	}

	
	public int deletePet_pd(int p_num) {
		String sql = "delete from pet_pd where p_num = ?";
		PreparedStatement pstmt = null;
		Pet_PdDTO pet = null;
		Connection conn = null;
		
		int num = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			num = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return num;
	}
	

	public int updatePet(Pet_PdDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update pet_pd set p_price=?, p_name=?, p_img=?, p_address=?, p_content=?, m_id=? where p_num=?";
		int num = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getP_price());			
			pstmt.setString(2, dto.getP_name());
			pstmt.setString(3, dto.getP_img());
			pstmt.setString(4, dto.getP_address());
			pstmt.setString(5, dto.getP_content());
			pstmt.setString(6, dto.getM_id());
			pstmt.setInt(7, dto.getP_num());
			num = pstmt.executeUpdate();
			if(num>0) {
				commit(conn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, null);
		}
		return num;
	}
	
}

