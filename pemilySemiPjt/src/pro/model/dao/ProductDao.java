package pro.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pro.model.vo.product;

public class ProductDao {

	public ArrayList<product> selectProduct(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<product> list = new ArrayList<product>();
		String query = "select * from product";
		product p=null;
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				p = new product();
				p.setPdNo(rset.getInt("pd_no"));
				p.setPdName(rset.getString("pd_name"));
				p.setPdPrice(rset.getInt("pd_price"));
				list.add(p);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
