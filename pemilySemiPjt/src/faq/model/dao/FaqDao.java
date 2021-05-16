package faq.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import faq.model.vo.Faq;

public class FaqDao {

	public ArrayList<Faq> selectFaqList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Faq> list = new ArrayList<Faq>();
		String query = "select * from faq";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Faq f = new Faq();
				f.setFaqContent(rset.getString("faq_content"));
				f.setFaqDate(rset.getString("faq_date"));
				f.setFaqNo(rset.getInt("faq_no"));
				f.setFaqTiite(rset.getString("faq_Title"));
				f.setFaqWriter(rset.getString("faq_writer"));
				list.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

}
