package outCa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import outCa.model.vo.OutCa;

public class OutCaDao {

	public ArrayList<OutCa> selectAllInPro(Connection conn, int start, int end) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<OutCa> list = new ArrayList<OutCa>();
		String query = "select * from(select rownum as sort, outca.* from(select * from outca order by outca_no desc) outca) where sort between ? and ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				OutCa oca = new OutCa();
				oca.setOutCaAn(rset.getInt("outCa_an"));
				oca.setOutCaCon(rset.getString("outCa_con"));
				oca.setOutCaDate(rset.getString("outCa_date"));
				oca.setOutCaEmp(rset.getString("outCa_emp"));
				oca.setOutCaMi(rset.getString("outCa_mi"));
				oca.setOutCaNo(rset.getInt("outCa_no"));
				oca.setOutCaPath(rset.getString("outCa_path"));
				oca.setOutCaPrice(rset.getInt("outCa_price"));
				oca.setOutCaStore(rset.getInt("outCa_store"));
				oca.setSort(rset.getInt("sort"));
				list.add(oca);
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

	public int totalListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "select count(*) as count from outca";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}
