package inca.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import inca.model.vo.Inca;

public class IncaDao {
	// 전체조회
	public ArrayList<Inca> IncaAllSelect(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Inca> inca = new ArrayList<Inca>();
		String query = "SELECT * FROM inca";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Inca i = new Inca();
				i.setIncaNo(rset.getInt("inca_no"));
				i.setIncaAn(rset.getInt("inca_an"));
				i.setIncaName(rset.getString("inca_name"));
				i.setIncaGender(rset.getString("inca_gender"));
				i.setIncaMonth(rset.getInt("inca_month"));
				i.setIncaCondition(rset.getInt("inca_condition"));
				i.setIncaPrice(rset.getInt("inca_price"));
				i.setIncaDate(rset.getString("inca_date"));
				i.setIncaStore(rset.getInt("inca_store"));
				i.setIncaPic(rset.getString("inca_pic"));
				i.setIncaPath(rset.getString("inca_path"));
				inca.add(i);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return inca;
	}
	// 한가지 타입만 조회
	public ArrayList<Inca> IncaOneTypeSelect(Connection conn, int incaNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Inca> inca = new ArrayList<Inca>();
		String query = "SELECT * FROM inca WHERE inca_no = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, incaNo);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Inca i = new Inca();
				i.setIncaNo(rset.getInt("inca_no"));
				i.setIncaAn(rset.getInt("inca_an"));
				i.setIncaName(rset.getString("inca_name"));
				i.setIncaGender(rset.getString("inca_gender"));
				i.setIncaMonth(rset.getInt("inca_month"));
				i.setIncaCondition(rset.getInt("inca_condition"));
				i.setIncaPrice(rset.getInt("inca_price"));
				i.setIncaDate(rset.getString("inca_date"));
				i.setIncaStore(rset.getInt("inca_store"));
				i.setIncaPic(rset.getString("inca_pic"));
				i.setIncaPath(rset.getString("inca_path"));
				inca.add(i);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return inca;
	}
	public int InsertInca(Connection conn, Inca i) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO inca VALUES(inca_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, DEFAULT, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, i.getIncaAn());
			pstmt.setString(2, i.getIncaName());
			pstmt.setString(3, i.getIncaGender());
			pstmt.setInt(4, i.getIncaMonth());
			pstmt.setInt(5, i.getIncaCondition());
			pstmt.setInt(6, i.getIncaPrice());
			pstmt.setInt(7, i.getIncaStore());
			pstmt.setString(8, i.getIncaPic());
			pstmt.setString(9, i.getIncaPath());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}
