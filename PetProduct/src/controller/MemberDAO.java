package controller;

import static controller.JdbcUtils.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.MemberDTO;

public class MemberDAO {
	
	// 회원등록
	public int memberInsert(MemberDTO dto) {
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		int res = 0; //db에 값 증가 표시
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getM_pw());
			pstmt.setString(3, dto.getM_name());
			pstmt.setString(4, dto.getM_email());
			pstmt.setString(5, dto.getM_address());
			pstmt.setInt(6, dto.getM_admin());
			pstmt.setInt(7, dto.getM_resv());
			pstmt.setInt(8, dto.getM_phone());
			res = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return res;
	}
	
	// 회원 정보찾기
	public MemberDTO searchPW(String m_id, String m_pw) {
		String sql = "select * from member where m_id = ? and m_pw = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDTO mem = null;
		Connection conn = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setString(2, m_pw);
			rs = pstmt.executeQuery();
			
		if(rs.next()) {
			mem = new MemberDTO(rs.getString("m_id"),
								rs.getString("m_pw"),
								rs.getString("m_name"),
								rs.getString("m_email"),
								rs.getString("m_address"),
								rs.getInt("m_admin"),
								rs.getInt("m_resv"),
								rs.getInt("m_phone"));
					}	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,rs);
		}
		return mem;
	}
	
	// 회원 로그인
	public MemberDTO memberLogin(String m_id, String m_pw) {
		String sql = "select * from member where m_id = ? and m_pw = ?";
		MemberDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setString(2, m_pw);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new MemberDTO(rs.getString("m_id"),
									rs.getString("m_pw"),
									rs.getString("m_name"),
									rs.getString("m_email"),
									rs.getString("m_address"),
									rs.getInt("m_admin"),
									rs.getInt("m_phone"),
									rs.getInt("m_resv"));
								}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}		
		return dto;
	}
	
	// 회원 정보 수정
	public int memberUpdate(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		

		int num = 0;
		String sql = "update member set m_pw =?, m_name =?, m_email =?, m_address =?, m_phone =? where m_id=?"; 
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getM_pw());
			pstmt.setString(2, dto.getM_name());
			pstmt.setString(3, dto.getM_email());
			pstmt.setString(4, dto.getM_address());
			pstmt.setInt(5, dto.getM_phone());
			pstmt.setString(6, dto.getM_id());
			
			num = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return num;
	}
	
	// 회원 탈퇴
	public int memberDelete(String m_id) {
		String sql = "delete from member where m_id = ?";
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		int num = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			num = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return num;
	}
	
	public MemberDTO member(String m_id) {
		String sql = "select * from member where m_id = ?";
		MemberDTO dto= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new MemberDTO(rs.getString("m_id"),
									rs.getString("m_pw"),
									rs.getString("m_name"),
									rs.getString("m_email"),
									rs.getString("m_address"),
									rs.getInt("m_admin"),
									rs.getInt("m_phone"),
									rs.getInt("m_resv"));
								}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}		
		return dto;
	}	
}

