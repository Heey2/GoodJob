package com.good.admin.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.good.admin.block.model.UserManagementDTO;
import com.test.util.DBUtil;

public class UserManagementDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public UserManagementDAO() {
		this.conn = DBUtil.open();
	}
	
	public void close() {
		try {
			this.conn.close();
		} catch (Exception e) {
			System.out.println("UserManagementDAO.close");
			e.printStackTrace();
		}
	}
	
	
	public int getTotalUserCount() {

		try {

			StringBuilder sql = new StringBuilder("SELECT COUNT(*) AS cnt FROM vwListUser");
			

			pstat = conn.prepareStatement(sql.toString());
			

			rs = pstat.executeQuery();

			if(rs.next()) {

				return rs.getInt("cnt");

			}

		} catch (Exception e) {
			System.out.println("총 유저 수 로드 실패");
			e.printStackTrace();
		}

		return 0;

	}
	
	
	
	
	public ArrayList<UserManagementDTO> getUserlist(int startIndex, int endIndex){
		
		ArrayList<UserManagementDTO> list = new ArrayList<>();
		
		try {
			
			StringBuilder sql = new StringBuilder("SELECT * FROM (SELECT ROWNUM AS rnum, t.* FROM (SELECT * "
                    + "FROM vwListUser "
                    + "ORDER BY regdate asc) t) WHERE rnum BETWEEN ? AND ?");
			
			pstat = conn.prepareStatement(sql.toString());
			int parameterIndex = 1;
			
			pstat.setInt(parameterIndex++, startIndex + 1);
			pstat.setInt(parameterIndex, endIndex);
			
			
			rs = pstat.executeQuery();
			while(rs.next()) {
				
				UserManagementDTO dto = new UserManagementDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setBoard(rs.getString("board"));
				dto.setComment(rs.getString("comment"));
				dto.setReview(rs.getString("review"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setReport(rs.getString("report"));
				dto.setStatus(rs.getString("status"));
				
				list.add(dto);
				
			}
			
		} catch (Exception e) {
			System.out.println("UserManagementDAO.userlist");
			e.printStackTrace();
		}
		
		return list;
	}

}









