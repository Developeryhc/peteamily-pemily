package inca.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import inca.model.dao.IncaDao;
import inca.model.vo.Inca;

public class IncaService {

	public ArrayList<Inca> IncaAllSelect() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Inca> inca = new IncaDao().IncaAllSelect(conn);
		JDBCTemplate.close(conn);
		return inca;
	}

	public ArrayList<Inca> IncaOneTypeSelect(int incaNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Inca> inca = new IncaDao().IncaOneTypeSelect(conn, incaNo);
		JDBCTemplate.close(conn);
		return inca;
	}

	public int insertInca(Inca i) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new IncaDao().InsertInca(conn, i);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

}
