package pro.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import inPro.model.vo.InPro;
import pro.model.vo.product;

public class ProductDao {

	public ArrayList<InPro> selectProduct(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<InPro> list = new ArrayList<InPro>();
		String query = "select inpro_no,inpro_name,inpro_price,inpro_pic from INPRO where inpro_sn=10";  //스낵만
		InPro pro = null;
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				pro = new InPro();
				pro.setInProNo(rset.getInt("inpro_no"));
				pro.setInProName(rset.getString("inpro_name"));
				pro.setInProPrice(rset.getInt("inpro_price"));
				pro.setInProPic(rset.getString("inpro_pic"));
				list.add(pro);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	public ArrayList<InPro> select3Product(Connection conn) {
	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<InPro> list = new ArrayList<InPro>();
		String query = "select inpro_no,inpro_name,inpro_price,inpro_pic from INPRO where inpro_sn=30";  //옷만
		InPro pro = null;
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				pro = new InPro();
				pro.setInProNo(rset.getInt("inpro_no"));
				pro.setInProName(rset.getString("inpro_name"));
				pro.setInProPrice(rset.getInt("inpro_price"));
				pro.setInProPic(rset.getString("inpro_pic"));
				list.add(pro);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
}
