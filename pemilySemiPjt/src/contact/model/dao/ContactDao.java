package contact.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import contact.model.vo.Contact;
import contact.model.vo.Emp;

public class ContactDao {

	public int insertPartner(Connection conn, Contact c) {
		PreparedStatement pstmt = null;
		int result =0;
		String query = "insert into partner values(partner_seq.nextval,?,?,?,?,?,1)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, c.getPartnerName());
			pstmt.setString(2, c.getPartnerEmp());
			pstmt.setString(3, c.getPhone());
			pstmt.setString(4, c.getEmail());
			pstmt.setString(5, c.getContent());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<Emp> selectAllEmp(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Emp> list = new ArrayList<Emp>();
		String query = "select * from emp where emp_store = 1";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Emp e = new Emp();
				e.setEmpEnter(rset.getString("emp_enter"));
				e.setEmpGender(rset.getString("emp_gender"));
				e.setEmpGrade(rset.getInt("emp_grade"));
				e.setEmpName(rset.getString("emp_name"));
				e.setEmpNo(rset.getInt("emp_no"));
				e.setEmpPhone(rset.getString("emp_phone"));
				e.setEmpStore(rset.getInt("emp_store"));
				list.add(e);
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
